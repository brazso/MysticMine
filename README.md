# Mystic Mine is now Open Source
All source code and content (except audio) of Mystic Mine (http://www.mysticmine.com) 
is now released under the MIT license (see LICENSE.txt for more info).  This 
includes:
- All source code (mainly written in python)
- All graphics (Blender 3D and Gimp files included)

Unfortunately the music and sound of the original game were bought under a royalty 
free license, and so they cannot be distributed here. However a proper replacement 
for these sounds and music files were added to the project with CC0/CCBY3 
licenses. This includes:
- All audio (sounds and music items included)

## About Mystic Mine
Mystic Mine is an indie game created by Koen Witters (aka Koonsolo http://www.koonsolo.com). 
You can find more info at http://www.mysticmine.com.

Unfortunately the afore mentioned links cannot be reached by now. Moreover it 
was more and more difficult to run the original game on modern operation systems.

In order to solve the mentioned obstacles, the project was ported to Python3 by some 
enthusiastic users. At the same time the royalty sound/audio was replaced to free ones.

## Why did Koen Witters make this game Open Source?
Please read his statement at https://github.com/dewitters/MysticMine#readme.

## How to Run the Game as Windows enduser
Simply download the install exe from the latest release and install it on your 
Windows machine. Have fun!

## Deep water only for developers
### Requirements
- Python
- pygame
- numpy
- cython
- Blender (only to regenerate sprites)

### How to Install Requirements (on Ubuntu Linux 22.04)
sudo apt install python3 python3-pygame python3-numpy cython3 blender

### How to Run the Game
In root directory of MysticMine sources run
```
make
./MysticMine
```

### Install Instructions
In root directory of MysticMine sources run
```
make install
```
This will install all files to the python site-packages directory and a start
script to you bin directory, so that you can start it by just calling
'MysticMine'

### Build Instructions
You can rebuild everything including all assets of the game. In root directory
of MysticMine sources run:
```
make rebuild-all
```

### Win32 Installer Creation Instructions
You may create windows installer from Linux easily. At first install Nullsoft 
Scriptable Install System (NSIS).
```
sudo apt install nsis
```
Install pynsist module which is a tool to build Windows installers for your 
Python applications. (For more info see https://github.com/takluyver/pynsist)
```
pip3 install pynsist
```
We need Mingw Cross-Compiler to build monorail.ai extension to win32 platform.
```
sudo apt install mingw-w64
```
Delete all work files which might have left from an earlier linux build.
```
make distclean
```
Finally launch the installer creator.
```
make win32
```
## License
### License (except audio files)
Copyright (C) 2012 Koen Witters

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### License (only audio files)
To person responsible for copyright of included files: you can copy-paste above text, make corrections if appropriate (if you decide to switch sounds or remove any, since some might be non-used(?)) and add an index which explains that ccby3 means that the sound is licensed under Creative Commons Attribution 3.0 Unported and link to https://creativecommons.org/licenses/by/3.0/legalcode.txt and the same for cc0 with https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

