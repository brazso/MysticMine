# (C)2012 Lukas Czerner <lczerner@loguj.cz>

all:
	@python3 setup.py build_ext --inplace
#	@python3 setup.py build_ext --inplace --compiler=mingw64 # unsupported by distutils
	rm -f monorail/data
	ln -s $(CURDIR)/data/800x600/ monorail/data

help:
	@echo "Usage: make <target>"
	@echo
	@echo "Available targets are:"
	@echo " help                    show this text"
	@echo " clean                   remove python bytecode and temp files"
	@echo " git-clean               remove all files outside git tree"
	@echo " install                 install program on current system"
	@echo " source                  create source tarball"
	@echo " rebuild-all             rebuild everything including all assets"
	@echo " import-win32            import cross python win32 files"
	@echo " build-win32             cross build to win32 (depends on import-win32)"
	@echo " install-win32           make nsis win32 install exe (depends on build-win32)"
	@echo " win32                   run all *-win32 targets in proper order"

clean:
	@python3 setup.py clean
	rm -rf build/temp.win32-x86_64-3.10/monorail
	rm -f MANIFEST
	rm -f monorail/ai.c monorail/ai.so monorail/ai.*.so monorail/ai.pyd
	rm -f monorail/data
	rm -rf assets/tmp
	find . -\( -name "*.pyc" -o -name '*.pyo' -o -name "*~" -\) -delete

git-clean:
	git clean -f

distclean: clean
	rm -rf dist
	rm -rf build
	rm -rf MysticMine.egg-info

install:
	@python3 setup.py install
	
source: clean
	@python3 setup.py sdist

rebuild-all: clean
	@python3 setup.py build_ext --inplace
	@python3 build.py

import-win32:
	mkdir -p build
	wget -q https://github.com/brazso/python-cross-files/raw/main/python-3.10.2-amd64-cross.zip -O build/python-3.10.2-amd64-cross.zip
	unzip -q -o build/python-3.10.2-amd64-cross.zip -d build
	rm -f build/python-3.10.2-amd64-cross.zip

build-win32:
#	@python3 setup.py build_ext --inplace --compiler=mingw64 # unsupported by distutils therefore build must be done manually (depends on cython3 and mingw-w64)
	cython3 -2 monorail/ai.pyx
	mkdir -p build/temp.win32-x86_64-3.10/monorail
	x86_64-w64-mingw32-gcc -c monorail/ai.c -o build/temp.win32-x86_64-3.10/monorail/ai.o -I build/Python310/include -DMS_WIN64 -O2
	x86_64-w64-mingw32-gcc -shared build/temp.win32-x86_64-3.10/monorail/ai.o -o monorail/ai.pyd -L build/Python310 -lpython310
	rm -f monorail/data
	ln -s $(CURDIR)/data/800x600/ monorail/data

install-win32:
	pynsist installer.cfg

win32: import-win32 build-win32 install-win32
