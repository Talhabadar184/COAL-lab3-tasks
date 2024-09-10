.model small
.stack 200h
.data

.code

mov ax,@data
mov ds,ax

mov word ptr ds:[1000h],0x1F00
mov word ptr ds:[1000h+2h],0xA0B1
mov word ptr ds:[1000h+4h],0x1254
mov word ptr ds:[1000h+6h],0x34EF
mov word ptr ds:[1000h+8h],0x8700



mov ax,[1000h]
add ax,[1002h]
add ax,[1004h]
add ax,[1006h]
add ax,[1008h]

HLT

mov bx,0xCD1F
mov ds,bx

mov word ptr ds:[0003h],ax

.exit
