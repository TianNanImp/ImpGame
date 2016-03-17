#include "StdAfx.h"
#include "PathManager.h"

using namespace std;

PathManager::PathManager(void)
{
}


PathManager::~PathManager(void)
{
}

std::wstring PathManager::GetImgPath(std::wstring strFileName)
{
	TCHAR pFileName[MAX_PATH] = {0}; 
	//得到程序自身的全路径 
	DWORD dwRet = GetModuleFileNameW(NULL, (LPWCH)pFileName, MAX_PATH);

	wstring strExeName = pFileName;
	size_t nPos = strExeName.find_last_of('\\');

	wstring strImgPath = strExeName.substr(0, nPos) + _T("\\res\\") + strFileName;

	return strImgPath;
}

std::string PathManager::GetImgPath(std::string strFileName)
{
	CHAR pFileName[MAX_PATH] = {0}; 
	//得到程序自身的全路径 
	DWORD dwRet = GetModuleFileNameA(NULL, (LPCH)pFileName, MAX_PATH);

	string strExeName = pFileName;
	size_t nPos = strExeName.find_last_of('\\');

	string strImgPath = strExeName.substr(0, nPos) + ("\\res") + strFileName;

	return strImgPath;
}

std::wstring PathManager::GetScriptPath(std::wstring strFileName)
{
	TCHAR pFileName[MAX_PATH] = {0}; 
	//得到程序自身的全路径 
	DWORD dwRet = GetModuleFileNameW(NULL, (LPWCH)pFileName, MAX_PATH);

	wstring strExeName = pFileName;
	size_t nPos = strExeName.find_last_of('\\');

	wstring strDatPath = strExeName.substr(0, nPos) + _T("\\dat") + strFileName;

	return strDatPath;
}

std::string PathManager::GetScriptPath(std::string strFileName)
{
	CHAR pFileName[MAX_PATH] = {0}; 
	//得到程序自身的全路径 
	DWORD dwRet = GetModuleFileNameA(NULL, (LPCH)pFileName, MAX_PATH);

	string strExeName = pFileName;
	size_t nPos = strExeName.find_last_of('\\');

	string strDatPath = strExeName.substr(0, nPos) + ("\\dat") + strFileName;

	return strDatPath;
}
