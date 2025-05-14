#include <ft2build.h>
#include FT_FREETYPE_H

int main() {
	FT_Library lib;

	if(FT_Init_FreeType(&lib)){
		std::cout << "FT_Init_FreeType(): failed" << std::endl;
		return 1;
	}

	std::cout << "Hello freetype!" << std::endl;

	FT_Done_FreeType(lib);

	return 0;
}
