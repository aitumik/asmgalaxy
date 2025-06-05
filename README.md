# asmgalaxy
Simple OS 

Run this to get started
```
nasm boot_sect.asm -f bin -o boot_sect.bin
qemu-system-i386 -drive format=raw,file=boot_sect.bin
```
