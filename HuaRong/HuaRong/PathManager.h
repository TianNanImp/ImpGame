#pragma once

#include <string>

class PathManager
{
public:
	PathManager(void);
	~PathManager(void);

	static std::wstring GetImgPath(std::wstring strFileName);

	static std::string GetImgPath(std::string strFileName);

	static std::wstring GetScriptPath(std::wstring strFileName);

	static std::string GetScriptPath(std::string strFileName);
};

