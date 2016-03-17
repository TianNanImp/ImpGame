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
	bool key;					// ����Ƿ��ǲܲ�
}BLOCK, *PBLOCK;

class Resource{
public:
	Resource();
	~Resource();

	// ͨ��lua�ű�����ͼƬ
	static bool LoadBlocks(std::vector<BLOCK> &vecBlocks, std::vector<BLOCK> &vecOutlet);

	// ����lua�Ĺؿ�
	static void SetChapter(int nChapter);

	// Ϊ���ݵ����һ����
	static int Lua_AddHuaRongBlock(lua_State *L);

	// ���ó���
	static int Lua_SetOutlet(lua_State *L);

	// ��õ�ǰ�ؿ�
	static int Lua_GetChapter(lua_State *L);

	// ���ùؿ���
	static int Lua_SetChapterName(lua_State *L);

	// ����luaʹ��unicode
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