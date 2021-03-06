FLAGS="-DTERMIOS -O2 -mips2 -DB_ENDIAN -fomit-frame-pointer -Wall -Iinclude"
SHFLAGS="-DPIC -fpic"

gcc -c -Icrypto $SHFLAGS $FLAGS -o crypto.o crypto/crypto.c
ld -shared -o libcrypto-1.0.0q.so crypto.o
gcc -c -Issl $SHFLAGS $FLAGS -o ssl.o ssl/ssl.c
ld -shared -o libssl-1.0.0q.so ssl.o
