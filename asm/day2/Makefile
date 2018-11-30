all: entry.img

entry.img: entry.bin
	dd bs=1024 if=/dev/zero of=entry.img count=1440
	dd if=entry.bin of=entry.img bs=512 count=1 conv=notrunc

entry.bin: entry.asm
	nasm -o entry.bin entry.asm

clean:
	rm -f entry.img entry.bin bochsout.txt