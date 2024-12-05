org 7C00h

jmp start

name: db 'KolupaevAE_NMT-323901',0

start:

mov ah, 00h
mov al, 13h
int 10h

mov si, name
mov dl, 1
mov dh, 1
loop1:
mov bh, 0
mov ah, 02h
int 10h
mov al, [cs:si]
cmp al, 0
je next1
mov bl, 4
mov bh, 0
mov ah, 0Eh
int 10h
inc dl
inc si
jmp loop1
next1:

mov si, coordinates
loop3:

mov ah, 0ch
mov bh, 0
mov cx, [cs:si]
cmp cx, 0
je next3
add cx, 1
add si, 2
mov dx, [cs:si]
add dx, 80
mov al, 4
int 10h
add si, 2
jmp loop3
next3:


jmp exit

coordinates:
dw 6, 0
dw 6, 1
dw 5, 2
dw 5, 1
dw 7, 2
dw 7, 1     ;вершина
dw 4, 2    ;левое ребро
dw 8, 2    ;правое ребро
dw 4, 3  ;левое ребро
dw 8, 3  ;правоеребро
dw 3, 4   ;левое ребро
dw 9, 4   ;правое ребро
dw 3, 5  ;левое ребро
dw 9, 5  ;правое ребро
dw 2, 6  ;левое ребро
dw 10, 6   ;правое ребро
dw 2, 7   ;левое ребро
dw 10, 7  ;правое ребро
dw 1, 8  ;левое ребро
dw 11, 8 ;правое ребро
dw 1, 9  ;левое ребро
dw 11, 9 ;правое ребро

dw 1, 10
dw 2, 10
dw 3, 10
dw 4, 10
dw 5, 10
dw 6, 10
dw 7, 10
dw 8, 10
dw 9, 10
dw 10, 10
dw 11, 10

dw 0

exit:

db 510-($-$$) dup 0
dw 0AA55h