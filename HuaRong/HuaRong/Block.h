#pragma once

#include <vector>
#include <string>
#include <map>

extern "C"  
{  
#include "lua.h"  
#include "lauxlib.h"  
#include "lualib.h"  
}

typedef struct _BLOCK{
	std::wstring wstrName;
	int x;
	int y;
	int width;
	int height;
	bool key;					// 标记是否是曹操
}BLOCK, *PBLOCK;

class Resource{
public:
	Resource();
	~Resource();

	// 通过lua脚本加载图片
	static bool LoadBlocks(std::vector<BLOCK> &vecBlocks, std::vector<BLOCK> &vecOutlet);

	// 设置lua的关卡
	static void SetChapter(int nChapter);

	// 为华容道添加一个块
	static int Lua_AddHuaRongBlock(lua_State *L);

	// 设置出口
	static int Lua_SetOutlet(lua_State *L);

	// 获得当前关卡
	static int Lua_GetChapter(lua_State *L);

	// 设置关卡名
	static int Lua_SetChapterName(lua_State *L);

	// 允许lua使用unicode
	static int Lua_utf8_to_utf16(lua_State *L);

	static std::wstring StringToWString(std::string str);

public:
	static std::map<int, std::wstring> m_mapChapterNames;

private:
	static std::vector<BLOCK> m_vecBlocks;
	static std::vector<BLOCK> m_vecOutlet;

	static int m_nChapter;

	static lua_State* m_L;
};