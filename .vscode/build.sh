#!/bin/bash

HERE="$(dirname "$(readlink -f "${0}")")"

mkdir -p ${HERE}/../build
cd ${HERE}/../build

cmake -DOpenGL_GL_PREFERENCE=GLVND -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DNO_EXAMPLES=ON -DNO_TUTORIALS=ON -DNO_REGRESSION=ON -DNO_DOC=ON -DNO_OMP=ON -DNO_CUDA=ON -DNO_OPENCL=ON -DNO_DX=ON -DNO_TESTS=ON -DGLEW_LOCATION="/usr" -DNO_PTEX=ON -DNO_TBB=ON  -DCMAKE_INSTALL_PREFIX="${HERE}/../inst" ..
cmake --build . --config Release --target install -- -j12