#include "StdAfx.h"
#include "Block.h"
#include "PathManager.h"

std::vector<BLOCK> Resource::m_vecBlocks;
std::vector<BLOCK> Resource::m_vecOutlet;
lua_State* Resource::m_L = NULL;
int Resource::m_nChapter = 0;
std::map<int, std::wstring> Resource::m_mapChapterNames;


Resource::Resource()
{

}

Resource::~Resource()
{

}

bool Resource::LoadBlocks(std::vector<BLOCK> &vecBlocks, std::vector<BLOCK> &vecOutlet)
{
	// 加载并注册lua
	m_L = luaL_newstate();

	// 打开公共算法库
	luaL_openlibs(m_L);

	// 注册lua函数
	lua_register(m_L, "Add", &Resource::Lua_AddHuaRongBlock);
	lua_register(m_L, "AddOutlet", &Resource::Lua_SetOutlet);
	lua_register(m_L, "GetChapter", &Resource::Lua_GetChapter);
	lua_register(m_L, "SetChapterName", &Resource::Lua_SetChapterName);
	lua_register(m_L, "L", &Resource::Lua_utf8_to_utf16);

	// 清空缓存数据
	m_vecBlocks.clear();
	m_vecOutlet.clear();

	// 执行lua
	std::string strHuaRongInit = PathManager::GetScriptPath("\\HuaRong\\init.lua");

	luaL_dofile(m_L, strHuaRongInit.c_str());

	lua_close(m_L);

	// 初始化位置信息
	vecBlocks.clear();
	vecOutlet.clear();
	for (auto itor=m_vecBlocks.begin(); itor!=m_vecBlocks.end(); itor++)
	{
		vecBlocks.push_back(*itor);
	}

	// 初始化出口
	for (auto itor=m_vecOutlet.begin(); itor!=m_vecOutlet.end(); itor++)
	{
		vecOutlet.push_back(*itor);
	}

	return true;
}

int Resource::Lua_AddHuaRongBlock(lua_State *L)
{
	BLOCK block;
	block.wstrName = StringToWString(lua_tostring(L, 1));
	block.x = (int)lua_tonumber(L, 2);
	block.y = (int)lua_tonumber(L, 3);
	block.width = (int)lua_tonumber(L, 4);
	block.height = (int)lua_tonumber(L, 5);
	block.key = (bool)lua_tonumber(L, 6);

	m_vecBlocks.push_back(block);

	return 0;
}

std::wstring Resource::StringToWString(std::string str)
{
	int nLen = (int)str.length(); 
	std::wstring wstr;
	wstr.resize(nLen, 0);
	
	MultiByteToWideChar(CP_UTF8,0,(LPCSTR)str.c_str(),nLen,(LPWSTR)wstr.c_str(), str.length());

	return wstr;
}

int Resource::Lua_SetOutlet(lua_State *L)
{
	BLOCK block;
	block.wstrName = StringToWString(lua_tostring(L, 1));
	block.x = (int)lua_tonumber(L, 2);
	block.y = (int)lua_tonumber(L, 3);
	block.width = (int)lua_tonumber(L, 4);
	block.height = (int)lua_tonumber(L, 5);
	block.key = (bool)lua_tonumber(L, 6);

	m_vecOutlet.push_back(block);
	return 0;
}

int Resource::Lua_GetChapter(lua_State *L)
{
	lua_pushnumber(L, m_nChapter);

	return 1;
}

void Resource::SetChapter(int nChapter)
{
	m_nChapter = nChapter;
}

int Resource::Lua_SetChapterName(lua_State *L)
{
	int nChapter = lua_tonumber(L, 1);
	std::wstring wstrName = StringToWString(lua_tostring(L, 2));

	m_mapChapterNames[nChapter] = wstrName;

	return 0;
}

int Resource::Lua_utf8_to_utf16(lua_State *L)
{
	size_t n = 0;  
	char* str = (char*)luaL_checklstring(L, -1, &n);  
	if(!str)   
		return 0;

	std::wstring wstr =StringToWString(str);

 	lua_pushlstring(L, (char*)wstr.c_str(), 1);  

	return 1;  
}




