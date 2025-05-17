   section .text
        global  _start
_start:
	mov ebx,0
	mov ecx,data
	mov edx,ndata
	sub edx,1
	mov esp,0
	mov ebp,0
	mov esi,ndata
	mov edi,7

loops:	mov esp,0		;ru-pu 0
	add edi,1
	mov ecx,data
	add edi,1			;ecxに場所
	add ebp,1
	add edi,1			;何重目か
	cmp ebp,esi
	add edi,1			;n kai
	je endif
loop:
	
	mov eax,[ecx]  		;a
	add edi,1
	mov ebx,[ecx+4]		;b
	add edi,2
	cmp eax,ebx		;比較	
	ja else			;b<aならelse
	
	add ecx,4		;次
	add edi,1
	add esp,1		;ru-pu count
	add edi,2
	cmp edx,esp		;比較
	je loops		;回数と個数が同じならloopsへ
	
	jmp loop 		;繰り返し
	
else:
	mov [ecx],ebx		;ecxの場所にb
	add edi,1
	mov [ecx+4],eax         ;ecx+4にa
	add edi,1
        add ecx,4		;次
	add edi,1
	add esp,1		;count
	add edi,2
	cmp edx,esp		;比較
	je loops	;回数と個数が同じならloopsへ
	
	jmp loop		;繰り返し
	


endif:
	mov ebx,edi	
	mov eax,1
        int 0x80
	
	section .data
	

	
data:	dd 13,14,15,11,154
	
ndata equ ($-data)/4
