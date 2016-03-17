#pragma once

#include <objbase.h>
#include <gdiplus.h>

#include <vector>
#include <string>

#include "Block.h"

enum Direction{
	LEFT,
	RIGHT,
	UP,
	DOWN,
};

class CGame
{
public:
	CGame(void);
	~CGame(void);
	enum{
		UNIT_SPACE = 20,
		UNIT_WIDTH = 120,
		UNIT_CNT_X = 4,
		UNIT_CNT_Y = 5,
	};

	static int GetWidth();
	static int GetHeight();

	bool Init(HWND hWnd);

	bool Draw();

	bool Free();

	bool Reset(int nChapter);

	// 进行一次移动
	// direc 方向
	// bFirst 同时出现两组时，True，执行上面或者左边的,False,执行下面或者右面的
	bool Move(Direction direc, bool bFirst);

private:
	// 获得需要移动的块
	PBLOCK GetMovedBlock(Direction direc, bool bFirst);

	// 判断一个块是否能够移动
	bool CouldMove(Direction direc, BLOCK *pBlock);

	// 移动指定块
	bool MoveBlock(Direction direc, BLOCK *pBlock);

	// 将一个点按指定方向移动一次
	bool MovePoint(Direction direct, int x, int y);

	// 初始化点阵
	bool InitLattice();

	// 初始化元素
	bool InitSpirit();

	// 绘制出口
	bool DrawOutlet();

private:
	HWND							m_hWnd;
	ULONG_PTR						m_token;
	Gdiplus::GdiplusStartupInput	m_input;
	Gdiplus::Bitmap *m_pBitmap;				// 使用位图进行缓存
	Gdiplus::Graphics *m_pGraphics;			// 内存Graphics
	Gdiplus::Graphics *m_pDGraphics;		// 设备Graphics
	bool m_Valid[UNIT_CNT_X][UNIT_CNT_Y];	//

	std::vector<BLOCK>					m_vecBlocks;
	std::vector<Gdiplus::Image *>		m_vecImages;
	std::vector<BLOCK>					m_vecOutlet;
};

