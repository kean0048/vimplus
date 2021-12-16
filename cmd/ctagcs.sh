#!/bin/bash
currentPath=$(pwd | sed 's$/$/$g')
echo $currentPath

find . -name "*.h" -o -name "*.c" -o -name "*.asm" -o -name "*.dts" > cscope.files
cscope -bkq -i cscope.files

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
