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

	// ����һ���ƶ�
	// direc ����
	// bFirst ͬʱ��������ʱ��True��ִ�����������ߵ�,False,ִ��������������
	bool Move(Direction direc, bool bFirst);

private:
	// �����Ҫ�ƶ��Ŀ�
	PBLOCK GetMovedBlock(Direction direc, bool bFirst);

	// �ж�һ�����Ƿ��ܹ��ƶ�
	bool CouldMove(Direction direc, BLOCK *pBlock);

	// �ƶ�ָ����
	bool MoveBlock(Direction direc, BLOCK *pBlock);

	// ��һ���㰴ָ�������ƶ�һ��
	bool MovePoint(Direction direct, int x, int y);

	// ��ʼ������
	bool InitLattice();

	// ��ʼ��Ԫ��
	bool InitSpirit();

	// ���Ƴ���
	bool DrawOutlet();

private:
	HWND							m_hWnd;
	ULONG_PTR						m_token;
	Gdiplus::GdiplusStartupInput	m_input;
	Gdiplus::Bitmap *m_pBitmap;				// ʹ��λͼ���л���
	Gdiplus::Graphics *m_pGraphics;			// �ڴ�Graphics
	Gdiplus::Graphics *m_pDGraphics;		// �豸Graphics
	bool m_Valid[UNIT_CNT_X][UNIT_CNT_Y];	//

	std::vector<BLOCK>					m_vecBlocks;
	std::vector<Gdiplus::Image *>		m_vecImages;
	std::vector<BLOCK>					m_vecOutlet;
};

