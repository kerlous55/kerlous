;1
.586
.MODEL FLAT

INCLUDE io.h
.STACK 4096

.DATA

x BYTE "Enter 1 number",0
x2 BYTE "Enter 2 number",0
x3 BYTE "Enter 3 number",0
n1 DWORD ?
n2 DWORD ?
n3 DWORD ?
r BYTE "the sum",0
y BYTE 40 DUP(?)
sum BYTE 11 DUP(?),0
sum1 DWORD ?
.CODE

_MainProc PROC

input x,y,40

atod y

mov n2,eax

input x2,y,40
atod y
mov n1,eax

add eax,n2


mov  n2,eax


input x3,y,40
atod y
mov n3,eax
mov ebx,2
mul ebx
 


sub eax,n2
neg eax
add eax,1
neg eax
dtoa sum,eax
 
 

output r,sum
mov eax,0
ret
_MainProc ENDP
END
//////////////////////////////////////////////////////////////////
;2
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096

.DATA
x BYTE "ENTER x NUMBER",0
x1 BYTE "ENTER y NUMBER",0
x3 BYTE "ENTER z NUMBER",0
x2 BYTE "the sum",0
Y BYTE 40 DUP(?)
n1 DWORD ?
n2  DWORD ?
n3  DWORD ?
sum BYTE 11 DUP(?),0
.CODE
_MainProc PROC
input  x,y,40
atod  y;
 mov  n1, eax

input  x1,y,40
atod  y;



mov   n3,eax
add   eax,n1;
mov   ebx,2
mul   ebx

mov   n3,eax

input  x3,y,40
atod  y;
mov   n2,eax

add   eax,n3

dtoa  sum,eax
 output x2,sum

 



mov   eax,0
ret
_MainProc ENDP
END
////////////////////////////////////////////////////////////////
;3.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096

.DATA
x BYTE "ENTER length NUMBER",0
x1 BYTE "ENTER width NUMBER",0

x2 BYTE "the perimeter is rectangle",0

Y BYTE 40 DUP(?)
n1 DWORD ?
n2  DWORD ?
sum BYTE 11 DUP(?),0
.CODE
_MainProc PROC
input  x,y,40
atod  y;
 mov  n1, eax
mov ebx,2;
mul ebx

mov  n1,eax

input  x1,y,40
atod  y;



mov   n2,eax
mov ebx,2;
mul ebx

add  eax,n1
 

dtoa  sum,eax
 output x2,sum

 



mov   eax,0
ret
_MainProc ENDP
END
///////////////////////////////////////////////////////////////
;4
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	pr BYTE "Result :)",0
	p  BYTE  "enter number of pennies ",0
	p1 BYTE  "enter number of nickels ",0
	p2 BYTE  "enter number of dimes ",0
	p3 BYTE  "enter number of quarters ",0
	p4 BYTE  "enter number of fifty-cent pieces ",0
	p5 BYTE  "enter number of dollar  ",0
	pd DWORD ?
	t  DWORD ?
	r  BYTE 11 DUP(?),0
	m  BYTE "The toatal you enter is "
	rd BYTE 11 DUP(?)
	   BYTE "  Dollar and "
	   ;BYTE ","
	rp BYTE 11 DUP(?)
	   BYTE "  Pennies ",0
	   ;BYTE "  Dollar  ",0

.CODE
_MainProc PROC 
	input p ,r,11
	atod r
	mov pd,eax

	
	input p1 ,r,11
	atod r
	mov t,eax
	mov eax,5
	mul t
	add pd,eax
	
	input p2 ,r,11
	atod r
	mov t,eax
	mov eax,10
	mul t
	add pd,eax

	input p3,r,11
	atod r
	mov t,eax
	mov eax,25
	mul t
	add pd,eax

	input p4 ,r,11
	atod r
	mov t,eax
	mov eax,50
	mul t
	add pd,eax

	input p5 ,r,11
	atod r
	mov t,eax
	mov eax,100
	mul t
	add eax,pd
	mov ebx,100
	div ebx


	dtoa rp,edx
	dtoa rd,eax
	output pr,m

	mov eax,0 
	ret

_MainProc ENDP

END
///////////////////////////////////////////////////////////////
;5
.586
.MODEL FLAT
INCLUDE io.h            
.STACK 4096
.DATA
	prompt1  BYTE    "enter the number  1 ", 0
	prompt2  BYTE    "enter the number  2 ", 0
	prompt3  BYTE    "enter the number  3 ", 0
	prompt4  BYTE    "enter the number  4 ", 0
	
	;x  DWORD    ?
	ad  DWORD    ?
	string      BYTE   40 DUP (?)
	ti          BYTE  "The value ",0 
	resultLbl1  BYTE  "The sum ="
	sum         BYTE   11 DUP (?)
	            BYTE  "  The average ="
	avg         BYTE   11 DUP (?)
	            BYTE  "  and reminder ="
	rem         BYTE   11 DUP (?)

.CODE
_MainProc PROC 
        input   prompt1, string, 40
		atod    string  
		mov     ad,eax
		
		input   prompt2, string, 40  
	    atod    string  
		add     eax,ad
		mov     ad,eax
		
		input   prompt3, string, 40  
	    atod    string  
		add     eax,ad
		mov     ad,eax
		
		input   prompt4, string, 40  
	    atod    string  
		add     eax,ad
		mov     ad,eax
    	dtoa    sum,ad

		mov     edx,0
		mov     ecx,4
		div     ecx
		dtoa    avg,eax
		dtoa    rem,edx
       		
		output  ti,resultLbl1
        mov      eax, 0 
        ret
_MainProc ENDP 
END                             
//////////////////////////////////////////////////////////////
;6
.586
.MODEL FLAT
INCLUDE io.h            
.STACK 4096
.DATA
	gr1     BYTE    "enter the grade  1", 0
	gr2     BYTE    "enter the grade  2", 0
	gr3     BYTE    "enter the grade  3", 0
	gr4     BYTE    "enter the grade  4", 0
	we1     BYTE    "enter the weight 1", 0
	we2     BYTE    "enter the weight 2", 0
	we3     BYTE    "enter the weight 3", 0
	we4     BYTE    "enter the weight 4", 0
	x       DWORD    ?
	y       DWORD    ?
	z       DWORD    ?
	wsum    DWORD    ?
	sumw    DWORD    ?
	string     BYTE   40 DUP (?)
	ti         BYTE  "The value is",0
	resultLbl  BYTE  "The weight sum ="
	wightsum   BYTE   11 DUP (?)
	           BYTE  "  The sum of weight = "
	sumwight   BYTE   11 DUP (?)
	           BYTE  "  The avreg ="
	avg        BYTE   11 DUP (?)

.CODE
_MainProc PROC
;1
        input   gr1, string, 40
		atod    string  
		mov     x,eax
		input   we1, string, 40  
	    atod    string 
		mov     sumw,eax
		imul    eax,x 
		mov     wsum,eax
;2
	    input   gr2, string, 40
		atod    string  
		mov     x,eax
		input   we2, string, 40  
	    atod    string 	
		mov     y,eax	
		imul    eax,x
		add     eax,wsum
		mov     wsum,eax
		mov     eax,y
		add     eax,sumw
		mov     sumw,eax	
;3
        input   gr3, string, 40
		atod    string  
		mov     x,eax
		input   we3, string, 40  
	    atod    string 	
		mov     y,eax	
		imul    eax,x
		add     eax,wsum
		mov     wsum,eax
		mov     eax,y
		add     eax,sumw
		mov     sumw,eax		
;4
        input   gr4, string, 40
		atod    string  
		mov     x,eax
		input   we4, string, 40  
	    atod    string 	
		mov     y,eax	
		imul    eax,x
		add     eax,wsum
		mov     wsum,eax
		mov     eax,y
		add     eax,sumw
		mov     sumw,eax	
;div			
		mov     edx,0
		mov     eax,wsum
		mov     ebx,sumw    
		div     ebx
		dtoa     avg,eax
		dtoa    wightsum,wsum
		dtoa    sumwight,sumw
		output  ti,resultLbl
        mov     eax, 0 
        ret
_MainProc ENDP 
END                             
