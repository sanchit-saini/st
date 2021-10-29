if [ ! -d "st" ]; then
    git clone https://git.suckless.org/st
    cd st
else
    cd st && git restore .
    rm -f config.h && make clean
fi

git apply ../patches/*.diff
git apply ../patches/*.txt

sudo make install