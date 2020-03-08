#git clone git://git.savannah.gnu.org/bash.git

bison -d parse.y
cp parse.tab.h bash/parse.tab.h
cp parse.tab.c bash/parse.tab.c

cd bash
./configure
gcc -fPIC -shared -o parse.tab.so parse.tab.c

