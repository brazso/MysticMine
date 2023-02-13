Mystic Mine is now Open Source
==============================

All source code and content (except audio) of Mystic Mine (http://www.mysticmine.com) 
is now released under the MIT license (see LICENSE.txt for more info).  This 
includes:
- All source code (mainly written in python)
- All graphics (Blender 3D and Gimp files included)

Unfortunately the music and sound of the original game were bought under a royalty 
free license, and so they cannot be distributed here. However a proper replacement 
for these sounds and music files were added to the project with CCBY3/CCBY3/CCBYSA3 
licenses. This includes:
- All audio (sounds and music items included)


Why did I make this game Open Source?
-------------------------------------

Plenty of people have mailed me with the request to port Mystic Mine to some
platform X (because that would be really cool!). Or to distribute Mystic Mine
where it's currently not available. But the sad truth is that I can't
put much energy in Mystic Mine because I'm focussing on another project
(http://rpgplayground.com). I feel sad about this, because it would indeed be
cool if Mystic Mine received more attention.

Therefore I decided to release Mystic Mine as Open Source, both the source code
and as much content as possible. 

Commercially I don't have much to gain from this, but there's a huge list of
things that would make me very happy:
- My fans creating their own levels (There's an ingame level editor that my
  friends and I used to create all those levels. Check the sources for hidden
  keyboard shortcuts).
- Modifications, adaptions and improvements that I would never have thought of
  myself.
- sudo aptitute install mysticmine
- Mystic Mine running on all kinds of different platforms.
- The Open Source community receiving something back from me. As you probably
  know I'm a huge fan of Open Source. Mystic Mine was created on Linux using
  python, pygame, gVim, Blender 3D, The Gimp, Audacity, ... . After receiving
  so much, it makes me happy to give something small back.

Enjoy, and have fun!


About Mystic Mine
-----------------
Mystic Mine is an indie game created by Koen Witters (aka Koonsolo http://www.koonsolo.com). 
You can find more info at http://www.mysticmine.com.

Unfortunaltely the afore mentioned links cannot be reached by now. 
The project was ported to Python3 by some enthusiastic users, the 
replacement of the royalty audio was replaced at the same time.


Requirements
------------
- Python
- pygame
- numpy
- cython
- Blender (only to regenerate sprites)


How to Install Requirements (on Ubuntu Linux)
---------------------------------------------
sudo apt install python3 python3-pygame python3-numpy cython3 blender


How to Run the Game
-------------------
In root directory of MysticMine sources:
- Run 'make'
- Run './MysticMine'


Install Instructions
--------------------
In root directory of MysticMine sources:
- Run 'make install'

This will install all files to the python site-packages directory and a start
script to you bin directory, so that you can start it by just calling
'MysticMine'


Build Instructions
------------------
You can rebuild everything including all assets of the game. In root directory
of MysticMine sources:
- Run 'make rebuild-all'


Win32 Installer Creation Instructions
-------------------------------------
You may create windows installer from linux. At first install Nullsoft 
Scriptable Install System (NSIS).
sudo apt install nsis
Install pynsist module which is a tool to build Windows installers for your 
Python applications. (For more info see https://github.com/takluyver/pynsist)
pip3 install pynsist
We need Mingw Cross-Compiler to build monorail.ai extension to win32 platform.
sudo apt install mingw-w64
Unfortunately mingw-w64 is unsupported by python distutils, so the cross 
compiling cannot be done from the Makefile using
@python3 setup.py build_ext --inplace --compiler=mingw64
See https://stackoverflow.com/a/70474888 for more info.
...
Finally run the installer.
pynsist installer.cfg

License (except audio files)
----------------------------

Copyright (C) 2012 Koen Witters

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

License (only audio files)
--------------------------

To person responsible for copyright of included files: you can copy-paste above text, make corrections if appropriate (if you decide to switch sounds or remove any, since some might be non-used(?)) and add an index which explains that ccby3 means that the sound is licensed under Creative Commons Attribution 3.0 Unported and link to https://creativecommons.org/licenses/by/3.0/legalcode.txt and the same for cc0 with https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt
