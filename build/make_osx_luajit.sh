
# MIT License

# Copyright (c) 2018 huailiang

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


cp CMakeLists_osx.txt CMakeLists.txt

mkdir -p build_lj_osx && cd build_lj_osx

cmake -DUSING_LUAJIT=ON  -GXcode ../

cd ..

cmake --build build_lj_osx --config Release

mkdir -p plugin_luajit/Plugins/ulua.bundle/Contents/MacOS/

cp build_lj_osx/Release/ulua.bundle/Contents/MacOS/ulua plugin_luajit/Plugins/ulua.bundle/Contents/MacOS/ulua