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

	static int enc_utf8_to_unicode_one(const unsigned char* pInput, unsigned long *Unic);

	static int enc_get_utf8_size(const unsigned char pInput);
};

