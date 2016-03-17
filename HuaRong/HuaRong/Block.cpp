#include "StdAfx.h"
#include "Block.h"

#include "PathManager.h"

std::vector<BLOCK> Resource::m_vecBlocks;
std::vector<BLOCK> Resource::m_vecOutlet;
lua_State* Resource::m_L = NULL;
int Resource::m_nChapter = 0;

Resource::Resource()
{

}

Resource::~Resource()
{

}

bool Resource::LoadBlocks(std::vector<BLOCK> &vecBlocks, std::vector<BLOCK> &vecOutlet)
{
	// ���ز�ע��lua
	m_L = luaL_newstate();

	// �򿪹����㷨��
	luaL_openlibs(m_L);

	// ע��lua����
	lua_register(m_L, "Add", &Resource::Lua_AddHuaRongBlock);
	lua_register(m_L, "AddOutlet", &Resource::Lua_SetOutlet);
	lua_register(m_L, "GetChapter", &Resource::Lua_GetChapter);
	
	// ��ջ�������
	m_vecBlocks.clear();
	m_vecOutlet.clear();

	// ִ��lua
	std::string strHuaRongInit = PathManager::GetScriptPath("\\HuaRong\\init.lua");

	luaL_dofile(m_L, strHuaRongInit.c_str());

	lua_close(m_L);

	// ��ʼ��λ����Ϣ
	vecBlocks.clear();
	vecOutlet.clear();
	for (auto itor=m_vecBlocks.begin(); itor!=m_vecBlocks.end(); itor++)
	{
		vecBlocks.push_back(*itor);
	}

	// ��ʼ������
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
	wstr.resize(nLen,L' ');
	
	MultiByteToWideChar(CP_ACP,0,(LPCSTR)str.c_str(),nLen,(LPWSTR)wstr.c_str(),nLen);

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



