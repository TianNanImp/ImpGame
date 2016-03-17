#include "StdAfx.h"
#include "Game.h"
#include <assert.h>

#include "PathManager.h"

using namespace Gdiplus;
using namespace std;

CGame::CGame(void)
{
}


CGame::~CGame(void)
{
}

bool CGame::Init(HWND hWnd)
{
	m_hWnd = hWnd;

	// ��ʼ��GdiPlus
	GdiplusStartup(&m_token, &m_input, NULL);

	HDC hdc = GetDC(hWnd);
	m_pBitmap = new Gdiplus::Bitmap(600, 800);
	m_pGraphics = new Graphics(m_pBitmap);
	m_pDGraphics = new Gdiplus::Graphics(hdc);

	if (!Reset(0))
	{
		return false;
	}

	if (!InitMenu())
	{
		return false;
	}
	return true;
}

bool CGame::Free()
{
	return true;
}

bool CGame::Draw()
{
	// ���Ʊ���
	m_pGraphics->Clear(Color(0, 255, 0)); //�����ɫ  

	// ���ƽ�ɫ
	assert(m_vecBlocks.size() == m_vecImages.size());
	for (size_t i=0; i<m_vecImages.size(); i++)
	{
		int x = UNIT_SPACE*(m_vecBlocks[i].x+1) + UNIT_WIDTH*m_vecBlocks[i].x;
		int y = UNIT_SPACE*(m_vecBlocks[i].y+1) + UNIT_WIDTH*m_vecBlocks[i].y;
		int width = UNIT_SPACE*(m_vecBlocks[i].width-1) + UNIT_WIDTH*m_vecBlocks[i].width;
		int height = UNIT_SPACE*(m_vecBlocks[i].height-1) + UNIT_WIDTH*m_vecBlocks[i].height;

		m_pGraphics->DrawImage(m_vecImages[i], x, y, width, height);
	}

	// ���Ƴ���
	if (!DrawOutlet())
	{
		return false;
	}

	// ��������ϵĽ��
	m_pDGraphics->DrawImage(m_pBitmap,0,0);
	//m_pDGraphics->Clear(HOLLOW_BRUSH);
	return true;
}

int CGame::GetWidth()
{	
	return (UNIT_CNT_X+1)*UNIT_SPACE + (UNIT_CNT_X)*UNIT_WIDTH + 8;
}

int CGame::GetHeight()
{
	return (UNIT_CNT_Y+1)*UNIT_SPACE + (UNIT_CNT_Y)*UNIT_WIDTH + 45;
}

bool CGame::Move(Direction direc, bool bFirst)
{
	// �ҵ����ƶ���Block
	BLOCK *pMovedBlock = GetMovedBlock(direc, bFirst);

	if (pMovedBlock == NULL)
	{
		return false;
	}

	if (!MoveBlock(direc, pMovedBlock))
	{
		return false;
	}

	return true;
}

bool CGame::MoveBlock(Direction direc, BLOCK *pBlock)
{
	// ������Ч��bitmap
	for (int i=pBlock->x; i<pBlock->x+pBlock->width; i++)
	{
		for(int j=pBlock->y; j<pBlock->y+pBlock->height; j++)
		{
			if (!MovePoint(direc, i, j))
			{
				return false;
			}
		}
	}

	// ����Block��λ��
	switch(direc)
	{
	case LEFT:
		pBlock->x -= 1;
		break;
	case RIGHT:
		pBlock->x += 1;
		break;
	case UP:
		pBlock->y -= 1;
		break;
	case DOWN:
		pBlock->y += 1;
		break;
	}

	return true;
}

PBLOCK CGame::GetMovedBlock(Direction direc, bool bFirst)
{
	bool bFoundFirst = false;
	PBLOCK pFirst = NULL;
	PBLOCK pSecond = NULL;
	for (auto itor=m_vecBlocks.begin(); itor!=m_vecBlocks.end(); itor++)
	{
		if (CouldMove(direc, &(*itor)))
		{
			if (bFoundFirst)
			{
				pSecond = &(*itor);
				break;
			}
			else
			{
				pFirst = &(*itor);
				bFoundFirst = true;
			}
		}
	}

	if (pFirst == NULL && pSecond == NULL)
	{
		return false;
	}
	else if (pSecond == NULL)
	{
		return pFirst;
	}
	else
	{
		if (bFirst)	// ������߻����ϱߵ�
		{
			if (direc == LEFT || direc == RIGHT) // �����ϱߵ�
			{
				if (pFirst->y < pSecond->y)
				{
					return pFirst;
				}
				else
				{
					return pSecond;
				}
			}
			else	// ������ߵ�
			{
				if (pFirst->x < pSecond->x)
				{
					return pFirst;
				}
				else
				{
					return pSecond;
				}
			}
		}
		else		// �����ұ߻����±ߵ�
		{
			if (direc == LEFT || direc == RIGHT) // �����ϱߵ�
			{
				if (pFirst->y < pSecond->y)
				{
					return pSecond;
				}
				else
				{
					return pFirst;
				}
			}
			else	// ������ߵ�
			{
				if (pFirst->x < pSecond->x)
				{
					return pSecond;
				}
				else
				{
					return pFirst;
				}
			}
		}
	}

	return NULL;
}

bool CGame::CouldMove(Direction direc, BLOCK *pBlock)
{
	switch(direc)
	{
	case LEFT:
		if (pBlock->x > 0 && m_Valid[pBlock->x-1][pBlock->y] 
		&& m_Valid[pBlock->x-1][pBlock->y+pBlock->height-1])
		{
			return true;
		}
		break;
	case DOWN:
		if (pBlock->y+pBlock->height<UNIT_CNT_Y && m_Valid[pBlock->x][pBlock->y+pBlock->height]
		&& m_Valid[pBlock->x+pBlock->width-1][pBlock->y+pBlock->height])
		{
			return true;
		}
		break;
	case UP:
		if (pBlock->y>0 && m_Valid[pBlock->x][pBlock->y-1]
		&& m_Valid[pBlock->x+pBlock->width-1][pBlock->y-1])
		{
			return true;
		}
		break;
	case RIGHT:
		if (pBlock->x+pBlock->width<UNIT_CNT_X && m_Valid[pBlock->x+pBlock->width][pBlock->y]
		&& m_Valid[pBlock->x+pBlock->width][pBlock->y+pBlock->height-1])
		{
			return true;
		}
		break;
	}

	return false;
}

bool CGame::MovePoint(Direction direct, int x, int y)
{
	m_Valid[x][y] ^= true;

	switch(direct)
	{
	case LEFT:
		assert(x-1 >=0);
		m_Valid[x-1][y] ^= true;
		break;
	case RIGHT:
		assert(x+1 < UNIT_CNT_X);
		m_Valid[x+1][y] ^= true;
		break;
	case UP:
		assert(y-1 >= 0);
		m_Valid[x][y-1] ^= true;
		break;
	case DOWN:
		assert(y+1 < UNIT_CNT_Y);
		m_Valid[x][y+1] ^= true;
		break;
	}

	return true;
}

bool CGame::Reset(int nChapter)
{
	if (nChapter < 0 || nChapter>300)
	{
		return true;
	}

	Resource::SetChapter(nChapter);

	// ͨ��lua��ʼ������Ϣ
	if (!Resource::LoadBlocks(m_vecBlocks, m_vecOutlet))
	{
		return false;
	}

	// ��ʼ������
	if (!InitLattice())
	{
		return false;
	}

	if (!InitSpirit())
	{
		return false;
	}

	return true;	
}

bool CGame::InitLattice()
{
	// �������ʼ��Ϊȫ��
	memset(m_Valid, 1, sizeof(m_Valid));

	// ���ݿ���Ϣ��ʼ������
	for (auto itor=m_vecBlocks.begin(); itor!=m_vecBlocks.end(); itor++)
	{
		for (int i=itor->x; i<itor->x+itor->width; i++)
		{
			for (int j=itor->y; j<itor->y+itor->height; j++)
			{
				m_Valid[i][j] = false;
			}
		}
	}
	return true;
}

bool CGame::InitSpirit()
{
	// �ͷ���Դ
	for (auto itor=m_vecImages.begin(); itor!=m_vecImages.end(); itor++)
	{
		delete *itor;
		*itor = NULL;
	}
	m_vecImages.clear();

	for (auto itor=m_vecBlocks.begin(); itor!=m_vecBlocks.end(); itor++)
	{
		Image *pImage = new Image(PathManager::GetImgPath(itor->wstrName).c_str());

		m_vecImages.push_back(pImage);

		if (pImage->GetLastStatus() != Ok)
		{
			return false;
		}
	}

	return true;
}

bool CGame::DrawOutlet()
{
	assert(m_vecOutlet.size() == 2);

	SolidBrush sb(Color(255,0,0));
	int x = min(m_vecOutlet[0].x, m_vecOutlet[1].x);
	int y = min(m_vecOutlet[0].y, m_vecOutlet[1].y);

	x = (x+1)*UNIT_SPACE + x*UNIT_WIDTH;
	y = (y+1)*UNIT_SPACE + y*UNIT_WIDTH;

	int width = 0;
	int height = 0;

	if (m_vecOutlet[0].x == m_vecOutlet[1].x)
	{
		width = UNIT_WIDTH;
		height = UNIT_WIDTH*2 + UNIT_SPACE;
	}
	else
	{
		height = UNIT_WIDTH;
		width = UNIT_WIDTH*2 + UNIT_SPACE;
	}

	//m_pGraphics->FillRectangle(&sb, x, y, width, height);
	//m_pGraphics->DrawImage(m_vecImages[0], x, y, width, height);
	m_pGraphics->FillRectangle(&sb, x, y, width, height);

	return true;
}

bool CGame::InitMenu()
{
	HMENU hMenu = GetMenu(m_hWnd);

	//ѭ�������Ӳ˵�
	HMENU hSubMenu = CreatePopupMenu();
	for (auto itor=Resource::m_mapChapterNames.begin(); itor!=Resource::m_mapChapterNames.end(); itor++)
	{

		UINT nSubMenu = WM_USER+itor->first;
		AppendMenu(hSubMenu, MF_STRING, nSubMenu, itor->second.c_str());
	}
	AppendMenu(hMenu, MF_STRING|MF_POPUP, (UINT)hSubMenu, _T("�ؿ�"));

	SetMenu(m_hWnd, hMenu);
	return true;
}