IDEAL
MODEL small
STACK 100h
DATASEG
;data segment
initialLocation_x db 35
initialLocation_y db 3


kube_x db ?
kube_y db ?


kube1 db '                #                ','$'
kube2 db '        / /         ','$'
kube3 db '    #    #    #    ','$'
kube4 db ' # # ','$'
kube5 db '    /     /     /     ','$'
kube6 db '  #  #  #  #      ','$'
kube7 db '            ','$'

kubeType db ?


kube_color db 00011010b


paint_color db 00011010b

color1 db 00011010b
color2 db 00101101b
color3 db 00111000b
color4 db 01001111b
color5 db 01011100b
color6 db 01101111b
color7 db 01111101b


stri db ?, '$'

; the bases of the baseLine
	;---------------------------
	baseLeftInitialX db 15
	baseLeftInitialY db 23

	baseRightInitialX db 62
	baseRightInitialY db 23
	;---------------------------




score db 0

ScoreStr db 'SCORE:$'

NumScoreString db 2 dup(?), '$'


;====================================
TempForCopyLines dw 48 dup(?) , '$'
									;for copying lines
sorceY db ?								
destY db ?
;====================================



;==============================================================================
; my screens

LoseScreen db'===============================================================================',13,10 
		   db'             ===============================================                   ',13,10
		   db'                        Yuval Rotmans Assembly Project                         ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
           db'                             GAME OVER!!!!!!!!                                 ',13,10
           db'                                                                               ',13,10
		   db'                             YOUR SCORE IS :' 
		   scoreInScreen db 2 dup(?) , '                                 ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10 
		   db'                          PRESS ENTER TO TRY AGAIN                             ',13,10
		   db'              ============== for exit press ESC ============                   ',13,10
		   db'===============================================================================',13,10
		   db'============                 MY RECORD IS : 33               ==================',13,10
		   db'===============================================================================',13,10
		   
		   db '$'


GoodbyeScreen db'===============================================================================',13,10 
		   db'             ===============================================                   ',13,10
		   db'                        Yuval Rotmans Assembly Project                         ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
           db'                              GOODBYE!!!!!!!                                   ',13,10
           db'                            VISIT US AGAIN !!!                                 ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10 
		   db'                                                                               ',13,10
		   db'                  ============== YUVAL ROTMAN ============                     ',13,10
		   db'===============================================================================',13,10
		   db'============                   GOODBYE !!!!!!!               ==================',13,10
		   db'===============================================================================',13,10
		   
		   db '$' 


startScreen   db'===============================================================================',13,10 
		      db'             ===============================================                   ',13,10
		   	  db'                        Yuval Rotmans Assembly Project                         ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10                                                    
			  db'    ooooooooooooo oooooooooooo ooooooooooooo ooooooooo.   ooooo  .oooooo..o    ',13,10
              db'    8    888   `8 `888      `8 8    888   `8 `888   `Y88. `888  d8P     `Y8    ',13,10
              db'         888       888              888       888   .d88   888  Y88bo.         ',13,10
              db'         888       888oooo8         888       888ooo88P    888   `"Y8888o.     ',13,10
              db'         888       888    "         888       888`88b.     888       `"Y88b    ',13,10
              db'         888       888       o      888       888  `88b.   888  oo     .d8P    ',13,10
              db'        o888o     o888ooooood8     o888o     o888o  o888o o888o 8""88888P      ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10
		      db'                                                                               ',13,10 
		      db'                                                                               ',13,10
		      db'                  ============== YUVAL ROTMAN ============                     ',13,10
		      db'===============================================================================',13,10
		      db'============          PRESS ANY KEY TO CONTINUE....          ==================',13,10
		      db'===============================================================================',13,10
		      db '$' 

 menuBar db'===============================================================================',13,10 
         db'===============================================================================',13,10
		   db'             ===============================================                   ',13,10
		   db'                        Yuval Rotmans Assembly Project                         ',13,10
		   db'                                                                               ',13,10
		   db'  press H - for help                                                           ',13,10
		   db'                                                                               ',13,10
		   db'  press B - for going back to opening screen                                   ',13,10
		   db'  press M - for nenue bar                                                      ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
           db'                                                                               ',13,10
           db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'   press Esc - close the game..                                                ',13,10
		   db'                                                                               ',13,10 
		   db'                                                                               ',13,10
		   db'             ===============================================                   ',13,10
		   db'===============================================================================',13,10
		   db'============           press Enter to start playing...       ==================',13,10
		   db'===============================================================================',13,10
		   
		   db '$'

helpScreen db'===============================================================================',13,10 
		   db'             ===============================================                   ',13,10
		   db'                        Yuval Rotmans Assembly Project                         ',13,10
		   db'                               Help  screen                                    ',13,10
		   db'  Instruction : Using the arrow keys, you can adjust where a','nd how the      ',13,10
		   db'  Tetriminos fall. By pressing the LEFT a','nd RIGHT Arrow keys,               ',13,10
		   db'  you can slide the falling Tetrimino from side to side.                       ',13,10
		   db'  You cant slide a Tetrimino past the edge of the Matrix.                      ',13,10
		   db'                                                                               ',13,10
           db'                                                                               ',13,10
		   db'   Goal: Put as many shapes as possible, fill as many lines as possible        ',13,10
		   db'   a','nd win as many points as possible                                       ',13,10                               
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'                                                                               ',13,10
		   db'   Aouthor: Yuval Rotman              Credit to my teacher: Alla Maryanovsky   ',13,10
		   db'                                                                               ',13,10
		   db'                             HAVE FUN !!!!!!!                                  ',13,10
		   db'                                                                               ',13,10 
		   db'                                                                               ',13,10
		   db'             ===============================================                   ',13,10
		   db'===============================================================================',13,10
		   db'============         press any key to start playing...       ==================',13,10
		   db'===============================================================================',13,10
		   
		   db '$' 













CODESEG
;code segment

proc black
;make the screen black
push di
push ax
push cx

mov cx , (80*25);all parts of the screen

mov di, 0
inc di

gfg:;random name for create lable for loop

mov al,0
mov[es:di] ,al
add di , 2

loop gfg

pop cx
pop ax
pop di
ret
endp black



proc enterTheGame
;shows the start screen
;gives option for help screen , about , menu and the game
push ax
push dx

StartEverything:

mov ah , 09h
mov dx , offset startScreen
int 21h

waitForAnyKey:
mov ah , 01h 
int 16h 
jz waitForAnyKey

mov ah ,0
int 16h

call menuBarStuff


pop dx
pop ax
ret
endp enterTheGame


proc menuBarStuff
push ax
push dx

openMenuBar:
mov ah , 09h
mov dx , offset menuBar
int 21h

waitForKeysInMenuBar:
mov ah , 01h 
int 16h 
jz waitForKeysInMenuBar
; the user entr a key

mov ah , 00h 
int 16h

; now ah have the bios scan key code
cmp ah , 01ch
jne itIsNoeEnter
; it is enter
jmp theGameItSelf

itIsNoeEnter:
cmp ah , 23h
jne ItIsNotH
; it is h
mov ah , 09h
mov dx , offset helpScreen
int 21h

waitForAnyKey1:
mov ah , 01h 
int 16h 
jz waitForAnyKey1
jmp theGameItSelf


ItIsNotH:
cmp ah , 30h
jne notB 
; it is b
jmp StartEverything

notB:
cmp ah , 01h 
jne notMyEsc
;it is esc
call Goodbye

notMyEsc:
jmp openMenuBar

theGameItSelf:



pop dx
pop ax
ret
endp menuBarStuff









proc prepareForPrint 
;make the screen black
push di
push ax
push cx

mov cx , (80*25);all parts of the screen

mov di, 0
inc di

jjhhggdd:;random name for create lable for loop

mov al, 00001111b
mov[es:di] ,al
add di , 2

loop jjhhggdd

pop cx
pop ax
pop di
ret
endp prepareForPrint








proc delay
    push si
	push cx
	
	mov si, 0FFFFH
od:
    mov cx, 01ffH
odin:
    loop odin
	dec si
	jnz od
	
	pop cx
	pop si
	ret
endp delay





proc get_XY_Location

; calculating point by x and y and returns a pointer value by di
; al - x , ah , y
; changing di and si value

push ax
push bx
push cx

mov bx , ax ; mov location x and y to the bx for calculating

mov ax , 0 ; reset ax register
mov al , bh

mov cx , 0 ;reset cx register
mov cx , 80
mul cx

mov cx , 0; ;reset cx register
mov cl , bl
add ax , cx

mov cx , 2
mul cx

	mov di , ax ; mov to di the left high point pointer

pop cx 
pop bx
pop ax

; returning the value
pop si
push di
push si

ret
endp get_XY_Location







proc printToScreen
; print a string with $ in the end to specific x and y in the screen
;get location by ax al - y , ah - x
;get string in dx by offset of string
;free using of ax and dx
; '/' - for line down
push dx
push ax
push cx
push di
push bx
push si

push ax ; its for saving the initial location

mov si , dx


mov bx , 0
mov bl , ah
mov ah , 0
mov cx , 80
mul cx
add ax , bx
dec ax
mov cx , 2
mul cx

mov dx , bx




mov di , ax ; di pointer for the left higth point

mov bx , si ; bx - pointer for the string


startDrawing_gfngg:;name for local loop
mov al , [bx] ; get char
mov ah , [paint_color] ;get attribute

mov [es:di], ax; paint the word

inc bx

mov cx, '/'
cmp [bx], cl; check ln case
jne check_println_case

add di , 160; do ln 
inc bx
jmp startDrawing_gfngg

check_println_case:
mov cx , '#'
cmp [bx],cl
jne check_finish_vhhh

mov ax , di;mov to the diver register
mov cl , 160
div cl;for getting the y value

inc al ; getting the new y value
pop dx
push dx; its for saving the initial location

mov ah, dh
push bx

mov bx , 0
mov bl , ah
mov ah , 0
mov cx , 80
mul cx
add ax , bx
dec ax
mov cx , 2
mul cx

mov di , ax

pop bx


inc bx

jmp startDrawing_gfngg


check_finish_vhhh:
mov cx , '$'; the finish character
cmp [bx], cl
je sof_gfjfjf
add di ,2
jmp startDrawing_gfngg


sof_gfjfjf:


pop dx
pop si
pop bx
pop di
pop cx
pop ax
pop dx
ret
endp printToScreen


proc drawKube
;get ax - x and y before and get a number in kube type 
push dx
mov dl , [kubeType] ; dl get the kube type

cmp dl , 1
jne not1_oiu
;this is 1
mov dx , offset kube1
jmp draw_hghgv

not1_oiu:;local lable
cmp dl , 2
jne not2_oiu
; this is 2
mov dx , offset kube2
jmp draw_hghgv

not2_oiu:;name for local lable
cmp dl , 3
jne not3_oiu
; this is 3
mov dx , offset kube3
jmp draw_hghgv

not3_oiu:;name for local lable
cmp dl , 4
jne not4_oiu
; this is 4
mov dx , offset kube4
jmp draw_hghgv

not4_oiu:;name for local lable
cmp dl , 5
jne not5_oiu
; this is 5
mov dx , offset kube5
jmp draw_hghgv

not5_oiu:;name for local lable
cmp dl , 6
jne not6_oiu
;this is 6
mov dx , offset kube6
jmp draw_hghgv

not6_oiu:
;this is 7
mov dx , offset kube7
;jmp automaticly

draw_hghgv:;name for local lable
call printToScreen

pop dx
ret
endp drawKube



proc draw_baselines
;dont get any argument 
;draw the court for the tetris game

push di
push ax
push cx
push bx

mov al , 2
mov ah , 15

mov bx , 0
mov bl , ah
mov ah , 0
mov cx , 80
mul cx
add ax , bx
dec ax
mov cx , 2
mul cx

mov di , ax
push di ; for saving di

mov cx , 49
drawLine_bhfv:;nome for the local lable
mov al , ' '
mov ah , 00010100b

mov [es:di], ax
add di , 2

loop drawLine_bhfv

pop di 
push di


mov cx , 22; loop of 12 times
drawRaw_dfjkd:;nome for the local lable
mov al , ' '
mov ah , 00010100b

mov [es:di], ax
add di, 160

loop drawRaw_dfjkd

pop di
push di

add di , 22*160
mov cx , 49

drawLine_gfrrd:;nome for the local lable
mov al , ' '
mov ah , 00010100b

mov [es:di], ax
add di , 2

loop drawLine_gfrrd

pop di 
push di

add di , 49*2
mov cx ,23

drawRaw_dgvsck:;nome for the local lable
mov al , ' '
mov ah , 00010100b

mov [es:di], ax
add di, 160

loop drawRaw_dgvsck

pop di 
push di

add di , 5*160+2
mov cx ,49

;drawLine_guuuu:;nome for the local lable
;mov al , '-'
;mov ah ,11000001b

;mov [es:di], ax
;add di , 2

;loop drawLine_guuuu ; end the function wrok draw the baselines on the screen 
; after that begin the pop's stafs



pop di; for saving di
pop bx
pop cx
pop ax
pop di
ret
endp draw_baselines

proc moveDown
;this function move the main kube down
;its eraze the old kube and draw the new kube in the new location
push ax
push dx
push cx

mov al , [kube_y]
mov ah , [kube_x]
mov cl , 0
mov [paint_color], cl
;introducing for my interupt
call drawKube;eraze the old kube

call draw_baselines ; 

mov al , [kube_y]
mov ah , [kube_x]

inc al;moving down one line
mov [kube_y] , al
mov cl , [kube_color]
mov [paint_color], cl
;new drawing of new kube
call drawKube


pop cx
pop dx
pop ax
ret
endp moveDown







proc moveRight
;this function move the main kube right
;its eraze the old kube and draw the new kube in the new location
push ax
push dx
push cx

mov al , [kube_y]
mov ah , [kube_x]
mov cl , 0
mov [paint_color], cl
;introducing for my interupt
call drawKube;eraze the old kube

call draw_baselines ; 

mov al , [kube_y]
mov ah , [kube_x]

inc ah;moving right the kube one pixels right
mov [kube_x] , ah
mov cl , [kube_color]
mov [paint_color], cl
;new drawing of new kube
call drawKube


pop cx
pop dx
pop ax

ret
endp moveRight




proc moveLeft
;this function move the main kube left
;its eraze the old kube and draw the new kube in the new location
push ax
push dx
push cx

mov al , [kube_y]
mov ah , [kube_x]
mov cl , 0
mov [paint_color], cl
;introducing for my interupt
call drawKube;eraze the old kube

call draw_baselines ; 

mov al , [kube_y]
mov ah , [kube_x]

dec ah;moving right the kube two pixels left
mov [kube_x] , ah
mov cl , [kube_color]
mov [paint_color], cl
;new drawing of new kube
call drawKube


pop cx
pop dx
pop ax

ret
endp moveLeft



proc getRandomNumber
;return in stack a random num in range(1,7(include))
;********///////change bx and si value///////**********              

pop si ; si contin the return back address

push ax
push di
push dx
push cx

mov di , 6Ch; the time counter port
mov ax, 40h;the timer area in RAM
mov es , ax;movw it to extara segment for pointing

mov dx , 0; reset dx for clearly usibg of dl

getNum:
mov ax , 0 ; reset ax for clearly usibg of al, the counter status is a 16 bits num and
; we need al - for low byte
mov ax , [es:di]; getting the time counter status
and al , 00000111b; for getting num in range of 0 to 7

mov dl , al ; dll contain nu with value between 0 , 7

cmp dl ,0 
jne contin_jjj
;it is zero
inc dl; for getting 1 as minimal result

contin_jjj:;name fo local lable
mov bx , dx; for using pointer register to contain the random num

;move back video memory to extra segment

mov ax, 0b800h         ; start address of text video memory
	                       ; 80 columns * 25 rows * 2 bytes per character:
						   ; low byte = character code; high byte = attribute (background+color)
	mov es, ax

pop cx
pop dx
pop di
pop ax

push bx; push the rando num to stack
push si; push the return back address

ret
endp getRandomNumber





proc setRandomColor
;the function is setting a random color for the kube color
push dx
push cx

call getRandomNumber ;getting a random number betwwen 1 -7
pop dx; the random number 

cmp dl ,1
jne not1_oyt
;is 1
mov cl , [color1]
jmp setColor_oii

not1_oyt:
cmp dl ,2
jne not2_oyt
;is 2
mov cl , [color2]
jmp setColor_oii

not2_oyt:
cmp dl ,3
jne not3_oyt
;is 3
mov cl , [color3]
jmp setColor_oii

not3_oyt:
cmp dl ,4
jne not4_oyt
;is 4
mov cl , [color4]
jmp setColor_oii

not4_oyt:
cmp dl ,5
jne not5_oyt
;is 5
mov cl , [color5]
jmp setColor_oii

not5_oyt:
cmp dl ,6
jne not6_oyt
;is 6
mov cl , [color6]
jmp setColor_oii

not6_oyt:
;is 7
mov cl , [color7]
;automaticly jump

setColor_oii:; name fo local lable
mov [kube_color] , cl ; mov the random color to the paint color

pop cx
pop dx
ret
endp setRandomColor



proc getKubeLength
;the function returns the kube lenght in stack changing si and dx value 
pop si ; saving the return back address
push ax 

mov al , [kubeType]


cmp al ,1
jne not1_jjdd
;is 1

mov al , 2

jmp returnLength_jjdd

not1_jjdd:
cmp al ,2
jne not2_jjdd
;is 2

mov al, 3

jmp returnLength_jjdd


not2_jjdd:
cmp al ,3
jne not3_jjdd
;is 3

mov al , 3

jmp returnLength_jjdd


not3_jjdd:
cmp al ,4
jne not4_jjdd
;is 4

mov al ,3

jmp returnLength_jjdd


not4_jjdd:
cmp al ,5
jne not5_jjdd
;is 5

mov al , 4

jmp returnLength_jjdd


not5_jjdd:
cmp al ,6
jne not6_jjdd
;is 6

mov al , 3


jmp returnLength_jjdd

not6_jjdd:
;is 7

mov al ,1

;automaticly jump

returnLength_jjdd:
mov ah , 0
mov dx , ax
pop ax

push dx; push the length
push si; the return back addrees
ret
endp getKubeLength





proc initialize
push ax
push dx
push cx


call setRandomColor ; setting a random color

mov cl , [kube_color] ; get the kube color in cl
mov [paint_color], cl ; get the kube color in paint color


mov cl , [initialLocation_x]
mov [kube_x] , cl ; move initial to kube x

mov cl , [initialLocation_y]
mov [kube_y], cl ;move initial to kube y

mov ah , [kube_x]
mov al , [kube_y]

call getRandomNumber; getting a random number between 1 - 7
pop dx ; the random number

mov [kubeType], dl ; the kube is a random kube from the datd ; for testing
call drawKube



pop cx
pop dx
pop ax


ret
endp initialize


proc getLeftHighPointer

; return the di value ; calculate the left high 

push ax
push cx

getLeftHighPointLocation:
mov ax , 0 ; reset ax register
mov al , [kube_y]

mov cx , 0 ;reset cx register
mov cx , 80
mul cx

mov cx , 0; ;reset cx register
mov cl , [kube_x]
add ax , cx

mov cx , 2
mul cx

	mov di , ax ; mov to di the left high point pointer
	sub di , 2

	pop ax
	pop cx

	pop si
	push di
	push si

ret
endp getLeftHighPointer


proc canDown
; check if the kube can down return 0 if can't || return 1 if yes
		
		initializeByKubeType:

		mov dl , [kubeType]
		cmp dl , 1
		jne not1_CantD
		; this is 1

		call canDownD1
			jmp returnResult

		not1_cantD:
		cmp dl , 2
		jne not2_cantD
		; this is 2
		call canDownD2
			jmp returnResult

		not2_cantD:
		cmp dl , 3
		jne not3_cantD
		;this is 3
		call canDownD3
			jmp returnResult

		not3_cantD:
		cmp dl , 4
		jne not4_cantD
		; it is 4
		call canDownD4
		jmp returnResult

		not4_CantD:
		cmp dl , 5
		jne not5_cantD
		;it is 5
		call canDownD5
		jmp returnResult

		not5_cantD:
		cmp dl , 6
		jne not6_CantD
		;it is 6
		call canDownD6
		jmp returnResult

		not6_CantD:
		; this is 7
		call canDownD7
		jmp returnResult


		

					returnResult:
					pop di
					push ax
					push di



ret
endp canDown




proc canDownD1
; spesific check for 1 kube

push cx
push di



call getLeftHighPointer
		pop di

		initializeKube1DownCheck:
		inc di ; for the high byte , the color byte

		add di , 160*2 ; for breaking down 2 lines

		mov cx , 16 

		checkD1:
		cmp [byte ptr es:di], 0
		jne youCantYouCatchColorD1

		add di , 2 ; move to the next double byte(world)

		loop checkD1

			call youAreAbleToMove
			jmp sof_cantDown1


		youCantYouCatchColorD1:
		call youShouldStop

		
		
		sof_cantDown1:



pop di
pop cx
ret
endp canDownD1

proc canDownD2
; calculate if the kube num 2 can break down a line 
;docementation is too difficult

push di 

call getLeftHighPointer
pop di

initializeForKube2:
add di , 160
inc di

mov cx , 7

checkD21:
cmp [byte ptr es:di] , 0
jne catchColorD2

add di , 2

loop checkD21

add di , 160*2

mov cx , 9

checkD22:
cmp [byte ptr es:di] , 0
jne catchColorD2

add di , 2

loop checkD22

call youAreAbleToMove
jmp sof_cantDown2



catchColorD2:
call youShouldStop

sof_cantDown2:
pop di

ret
endp canDownD2


proc canDownD3

push di

call getLeftHighPointer
pop di 

initializeForKube3:
add di , 160*4
inc di

mov cx , 4

checkD3:
cmp [byte ptr es:di] , 0
jne catchColorD3

add di , 2

loop checkD3
call youAreAbleToMove
jmp sof_cantDown3

catchColorD3:
call youShouldStop

sof_cantDown3:

pop di
ret
endp canDownD3








proc canDownD4
push di

;get di pointer
call getLeftHighPointer
pop di

initializeForKube4:
add di , 160*3
inc di ; for using high byte color byte

checkD4:
cmp [byte ptr es:di] , 0
jne iCatchAcolor4
; can move down
call youAreAbleToMove
jmp finishCanDown4

iCatchAcolor4:
call youShouldStop

finishCanDown4:

pop di
ret
endp canDownD4


proc canDownD5
push di
;getting di pointer
call getLeftHighPointer
pop di

initializeForKube5:
add di , 160
inc di ; for getting color byte

mov cx , 3
checkD51:
cmp [byte ptr es:di] , 0
jne iCatchAColor5
; continue checking
add di , 2

loop checkD51
; break down a line
add di , 160

mov cx , 4

checkD52:
cmp [byte ptr es:di] , 0
jne iCatchAColor5
; continue checking
add di , 2

loop checkD52

add di , 160 ; fo breaking a line

mov cx , 4
checkD53:
cmp [byte ptr es:di] , 0
jne iCatchAColor5
; continue checking
add di , 2

loop checkD53

add di , 160 ; breaking down a line

mov cx , 5

checkD54:
cmp [byte ptr es:di] , 0
jne iCatchAColor5
; continue checking
add di , 2

loop checkD54


call youAreAbleToMove
jmp sof_cantDown5





iCatchAColor5:
call youShouldStop

sof_cantDown5:

pop di
ret
endp canDownD5






proc canDownD6
push di
;gets di pointer
call getLeftHighPointer
pop di

initializeForKube6:
add di , 160*5;breaking down 5 lines
inc di ; gets the high byte the color byte

mov cx , 6
checkD6:
cmp [byte ptr es:di] , 0
jne iCatchAColor6

add di , 2

loop checkD6
call youAreAbleToMove
jmp sof_cantDown6


iCatchAColor6:
call youShouldStop

sof_cantDown6:

pop di
ret
endp canDownD6



proc canDownD7
push di

call getLeftHighPointer
pop di

initializeForKube7:
add di ,160
inc di ; for moving the high byte , the color byte

mov cx , 12
checkD7:
cmp [byte ptr es:di],0
jne iCatchAColor7

add di , 2

loop checkD7

call youAreAbleToMove
jmp sof_cantDown7

iCatchAColor7:
call youShouldStop

sof_cantDown7:

pop di
ret
endp canDownD7






proc youShouldStop

mov ax , 0

ret
endp youShouldStop


proc youAreAbleToMove

mov ax , 1

ret
endp youAreAbleToMove



proc canRight
; check if the kube can right return 0 if can't || return 1 if yes
		
		initializeByKubeTypeForRight:

		mov dl , [kubeType]
		cmp dl , 1
		jne not1_CantR
		; this is 1
		call canRight1
		
			jmp returnResultCanR

		not1_CantR:
		cmp dl , 2
		jne not2_CantR
		; this is 2
		
		call canRight2

			jmp returnResultCanR

		not2_CantR:
		cmp dl , 3
		jne not3_CantR
		;this is 3
		
		call canRight3

			jmp returnResultCanR

		not3_CantR:
		cmp dl , 4
		jne not4_CantR
		; it is 4

		call canRight4


		jmp returnResultCanR

		not4_CantR:
		cmp dl , 5
		jne not5_CantR
		;it is 5
		
		call canRight5

		jmp returnResultCanR

		not5_CantR:
		cmp dl , 6
		jne not6_CantR
		;it is 6
		call canRight6


		jmp returnResultCanR

		not6_CantR:
		; this is 7
		call canRight7
		


		jmp returnResultCanR


		

					returnResultCanR:
					pop di
					push ax
					push di



ret
endp canRight


proc canRight1
;checks if kube 1 can move right return boolean result in ax
push di 
; get di pointer value

call getLeftHighPointer
pop di

; inisialize for kube 1
add di , 16*2 ; point of out di pointer
inc di ; for moving the high byte , the color byte

mov cx , 2
checkR1:
cmp [byte ptr es:di] , 0
jne iCatchAcolorR1

add di , 160

loop checkR1

call youAreAbleToMove
jmp sof_cantRight1



iCatchAcolorR1:
call youShouldStop


sof_cantRight1:


pop di
ret
endp canRight1



proc canRight2
push di
; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 2
add di , 8*2 ; move di to the end of kube
inc di ; move to the color byte , high byte

; start checking 
mov cx , 2
checkR2:
cmp [byte ptr es:di] , 0
jne iCatchAcolorR2

add di , 160

loop checkR2

; initial for new cheacking

add di , 8*2 ; for going to the end of the kube

cmp [byte ptr es:di] , 0
jne iCatchAcolorR2



; if the code runs here it means the kube 2 can move right

call youAreAbleToMove
jmp sof_cantRight2




iCatchAcolorR2:
call youShouldStop


sof_cantRight2:



pop di
ret
endp canRight2




proc canRight3
push di
; gets di pointer
call getLeftHighPointer
pop di 

;initial for kube 3
add di , 4*2
inc di ; moving to the high bytes


mov cx , 4
checkR3:
cmp [byte ptr es:di] , 0
jne iCatchAcolorR3

add di , 160

loop checkR3

call youAreAbleToMove
jmp sof_cantRight3



iCatchAcolorR3:
call youShouldStop


sof_cantRight3:

pop di
ret
endp canRight3



proc canRight4
push di
; gets di pointer
call getLeftHighPointer
pop di 

;initial for kube 3

add di , 2 ; for moving one coll right
inc di ; moving to the high bytes

mov cx , 3
checkR4:
cmp [byte ptr es:di] , 0
jne iCatchAcolorR4

add di , 160

loop checkR4

call youAreAbleToMove
jmp sof_cantRight4



iCatchAcolorR4:
call youShouldStop


sof_cantRight4:

pop di
ret
endp canRight4



proc canRight5
push di
; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 2
add di , 4*2 ; move di to the end of kube
inc di ; move to the color byte , high byte

; start checking 
mov cx , 4

checkR5:
cmp [byte ptr es:di] , 0
jne iCatchAcolorR5

add di , (160+4*2) ; for moving to next line

cmp [byte ptr es:di] , 0
jne iCatchAcolorR5

add di , (160+4*2) ; for moving to next line

cmp [byte ptr es:di] , 0
jne iCatchAcolorR5

add di , (160+4*2) ; for moving to next line

cmp [byte ptr es:di] , 0
jne iCatchAcolorR5


call youAreAbleToMove
jmp sof_cantRight5

iCatchAcolorR5:
call youShouldStop

sof_cantRight5:

pop di
ret
endp canRight5



proc canRight6
push di
; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 2
add di , 2*2 ; move di to the end of kube
inc di ; move to the color byte , high byte

mov cx , 4
checkR6:
cmp [byte ptr es:di] , 0
jne iCatchAcolorR4

add di , 160

loop checkR6

add di , 4*2

cmp [byte ptr es:di] , 0
jne iCatchAcolorR4

call youAreAbleToMove
jmp sof_cantRight6

iCatchAcolorR6:
call youShouldStop

sof_cantRight6:


pop di
ret
endp canRight6


proc canRight7
push di
; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 2
add di , 12*2 ; move di to the end of kube
inc di ; move to the color byte , high byte

cmp [byte ptr es:di] , 0
jne iCatchAcolorR7

call youAreAbleToMove
jmp sof_cantRight7

iCatchAColorR7:
call youShouldStop


sof_cantRight7:



pop di
ret
endp canRight7




















proc canLeft
; check if the kube can left return 0 if can't || return 1 if yes
		
		initializeByKubeTypeForLeft:

		mov dl , [kubeType]
		cmp dl , 1
		jne not1_CantL
		; this is 1
		
		call canLeft1

			jmp returnResultCanL

		not1_CantL:
		cmp dl , 2
		jne not2_CantL
		; this is 2
		
		call canLeft2

			jmp returnResultCanL

		not2_CantL:
		cmp dl , 3
		jne not3_CantL
		;this is 3
		
		call canLeft3

			jmp returnResultCanL

		not3_CantL:
		cmp dl , 4
		jne not4_CantL
		; it is 4

		call canLeft4


		jmp returnResultCanL

		not4_CantL:
		cmp dl , 5
		jne not5_CantL
		;it is 5
		
		call canLeft5

		jmp returnResultCanL

		not5_CantL:
		cmp dl , 6
		jne not6_CantL
		;it is 6
		
		call canLeft6

		jmp returnResultCanL

		not6_CantL:
		; this is 7
		
		call canLeft7


		jmp returnResultCanL


		

					returnResultCanL:
					pop di
					push ax
					push di



ret
endp canLeft








proc canLeft1
push di

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 1


dec di

checkL1:
cmp [byte ptr es:di], 0
jne iCatchAcolorL1



call youAreAbleToMove
jmp sof_cantLeft1

iCatchAcolorL1:
call youShouldStop


sof_cantLeft1:



pop di
ret
endp canLeft1







proc canLeft2
push di 

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 2
dec di ; mov di one col left in the high bytes , the color bytes

checkL2: ; the checking
cmp [byte ptr es : di] , 0 
jne iCatchAcolorL2

add di , (160 + 7*2)

mov cx , 2
checkL21:
cmp [byte ptr es : di] , 0 
jne iCatchAcolorL2


add di , 160

loop checkL21



call youAreAbleToMove
jmp sof_cantLeft2

iCatchAcolorL2:
call youShouldStop

sof_cantLeft2:

pop di 
ret
endp canLeft2






proc canLeft3
push di 

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 3
dec di ; mov di one col left in the high bytes , the color bytes

mov cx , 4
checkL3:
cmp [byte ptr es: di] , 0
jne iCatchAcolorL3

add di , 160

loop checkL3

call youAreAbleToMove
jmp sof_cantLeft3


iCatchAcolorL3:
call youShouldStop


sof_cantLeft3:


pop di
ret
endp canLeft3



proc canLeft4
push di

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 4
dec di ; mov di one col left in the high bytes , the color bytes

mov cx , 3
checkL4:
cmp [byte ptr es: di] , 0
jne iCatchAcolorL4

add di , 160

loop checkL4

call youAreAbleToMove
jmp sof_cantLeft4


iCatchAcolorL4:
call youShouldStop


sof_cantLeft4:


pop di
ret
endp canLeft4



proc canLeft5
push di 

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 5
dec di ; mov di one col left in the high bytes , the color bytes

cmp [byte ptr es: di] , 0
jne iCatchAcolorL5

add di , (160 + 3*2)

cmp [byte ptr es: di] , 0
jne iCatchAcolorL5

add di , (160 + 4*2)

cmp [byte ptr es: di] , 0
jne iCatchAcolorL5

add di , (160 + 4*2)

cmp [byte ptr es: di] , 0
jne iCatchAcolorL5


call youAreAbleToMove
jmp sof_cantLeft5

iCatchAcolorL5:
call youShouldStop


sof_cantLeft5:


pop di
ret
endp canLeft5







proc canLeft6
push di

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 6
dec di ; mov di one col left in the high bytes , the color bytes

mov cx , 5
checkL6:
cmp [byte ptr es: di] , 0
jne iCatchAcolorL6

add di , 160

loop checkL6

call youAreAbleToMove
jmp sof_cantLeft6


iCatchAcolorL6:
call youShouldStop


sof_cantLeft6:


pop di
ret
endp canLeft6




proc canLeft7
push di 

; gets di pointer
call getLeftHighPointer
pop di 

;initialize for kube 6
dec di ; mov di one col left in the high bytes , the color bytes

cmp [byte ptr es: di] , 0
jne iCatchAcolorL7

call youAreAbleToMove
jmp sof_cantLeft7

iCatchAcolorL7:
call youShouldStop

sof_cantLeft7:


pop di
ret
endp canLeft7





proc moveSidesByKeys
; get from keybord buffer key and after that if key is one of the arrows 
;it is mpving the kube for the nowlly situation

push ax 
push cx


mov cx , 4
startOfMovingByKeys:

mov ah , 01h
int 16H
jz sof_moveByKeys

mov ah , 00H
int 16H

cmp ah , 4Bh ; check the left arrow
jne notLeftMoveByKeys
;this is left
call canLeft ; check for going left
pop ax

cmp ax , 1
jne sof_moveByKeys
; the kube can move

call moveLeft
jmp sof_moveByKeys

notLeftMoveByKeys:
cmp ah , 4Dh ; check the right arrow
jne notRightMoveByKeys
; this is right
call canRight ; check for going right
pop ax

cmp ax , 1
jne sof_moveByKeys
; the kube can move

call moveRight
jmp sof_moveByKeys


notRightMoveByKeys:
cmp ah ,01h
jne notEscMoveByKeys
; this is esc 

call Goodbye
jmp sof_moveByKeys

notEscMoveByKeys:
cmp ah , 50h
jne notDown
; this is down
call canDown
pop ax
cmp al ,1
jne sof_moveByKeys
;can move down
call moveDown
jmp notEscMoveByKeys


notDown:
cmp ah , 32h
jne notM
; it is m

mov ah , 00H
int 16H

call menuBarStuff

notM:


sof_moveByKeys:


loop startOfMovingByKeys

pop cx
pop ax
ret
endp moveSidesByKeys



proc casting
; procedure which gets one usigned number in AL register
; and return a string representation of the number in RAM.
; BX register points to start address of the string.
; this function works good till 99
push cx
	xor ah, ah
	mov cl , 10

	div cl

	add al , 30h
	add ah , 30h

	mov [bx] , al
	mov [bx+1] , ah

pop cx
    ret 
endp casting



proc incScore
; adds one to the score real num in data segment
push ax

mov al , [score]
inc al
mov [score] , al

pop ax
ret
endp incScore


proc printScore

; prints the score string casting the score num to a string and prints it on side

push ax
push cx
push dx
push bx


	mov al , 2
	mov ah , 2
	mov cl , 00001111b
	mov [paint_color] , cl
	mov dx , offset ScoreStr
	call printToScreen

	mov al , [score]
	mov bx , offset NumScoreString
	call casting

	mov al , 2
	mov ah , 9

	mov cl , 00001111b
	mov [paint_color] , cl
	mov dx , offset NumScoreString
	call printToScreen


pop bx
pop dx
pop cx
pop ax

ret
endp printScore



proc updateScore
; add one to the score varrible and print it another time
call incScore
call printScore

ret
endp updateScore





proc getInitialLocation
; return the di value of initial location ; calculate the left high 

push ax
push cx

getLeftHighInitialPointLocation:
mov ax , 0 ; reset ax register
mov al , [initialLocation_y]

mov cx , 0 ;reset cx register
mov cx , 80
mul cx

mov cx , 0; ;reset cx register
mov cl , [initialLocation_x]
add ax , cx

mov cx , 2
mul cx

	mov di , ax ; mov to di the left high point pointer
	sub di , 2

	pop ax
	pop cx

	pop si
	push di
	push si


ret
endp getInitialLocation





proc isLosed
; the function checks if the kube was built on a old kube 
;if no it return 1 in the stack , if yes its return a zero
; if yes it means that the player losed
;the values of di and si are lost

; gets initial location point pointer
call getInitialLocation
pop di

;initialize for initial location
inc di ; moving high bytes the color bytes

cmp [byte ptr es:di], 0
je continuePlay
; no he lose
mov di , 0
jmp returnLosingResoltByTheStack

continuePlay:
mov di , 1 ; yes he can continue

returnLosingResoltByTheStack:
; return the value by the stack
pop si
push di
push si ; the return adress

ret
endp isLosed



proc setForLoseAndDo
; finish the game and print a massege
push ax
call isLosed
pop ax


cmp al , 1
je sof_Losed
; losed

call prepareForPrint

mov al , [score]
mov bx ,offset scoreInScreen
call casting

mov ah, 09h
mov dx , offset LoseScreen
int 21h
pop ax

push ax 

; after losing

afterLosing:
mov ah , 01h
int 16H
jz afterLosing

;kebord bufer is avilable know
mov ah , 00H
int 16H

cmp ah , 1ch; check for enter
jne notEnter_dddfff
;it is enter

call initialGame
call playGame

jmp sof_Losed
notEnter_dddfff: ; name for local lable
cmp ah , 01h ; checks for ESC
jne notESC_dddfff
; it is esc

call Goodbye
jmp sof_Losed


notESC_dddfff:
jmp afterLosing


pop ax


call finish

sof_Losed:
pop ax

ret
endp setForLoseAndDo






proc checkForErasingRaw
; my function scan every raw in the table game if one raw is full it is return the y value 
;of that raw
; change ax and si values while the function

push di
push cx

mov al , [baseLeftInitialX]
mov ah , [baseLeftInitialY]


initializeForLine:

call get_XY_Location
pop di

inc di ; move to the high bytes , the color bytes

checkLinesIfFullOfColor:

mov cx , 48
checkLine:
cmp [byte ptr es:di] , 0
je notThatLine
; this coll is full of color
add di , 2 ; move to the next coll
loop checkLine ; if the loop break after she finish working the raw is full

mov al , ah ; al now have the y value of full color
xor ah, ah ; reseting ah ; put 0 in ah
;now ax contain the y value

jmp sof_checkForErasingRaw

notThatLine:
dec ah ; begin checking the next up line
cmp ah , 2
jne initializeForLine
; if it equal to 2 and it finish the check

mov ax , 0 ; return zero because there is no full line


sof_checkForErasingRaw:
pop cx 
pop di


;return the value of full line by the stack
pop si
push ax
push si

ret
endp checkForErasingRaw


proc erazeLine
; get ax as (x,y) - al - x , ah - y
push ax
push cx
push di

call get_XY_Location ; get (x,y) by ax as a parameter
pop di 

mov cx , 48 ; do it on all the line
erazeLines:
mov al , ' '
mov ah , 0

mov [word ptr es:di] , ax ; turn off coll in line

add di , 2 ; move to the newt coll

loop erazeLines


pop di 
pop cx
pop ax

ret
endp erazeLine




proc copyLine
; the function copy line from sorce to dest and eraze the sorce line

; the function gets the lines by dx register
; in dl gets the sorce y value 
; in dh gets the destenation y value 

push bx
push ax
push cx
push dx
push si
push di

mov bx , offset TempForCopyLines ; begin of temp line in extra segment

;prep for build di begin line pointer

mov al , [baseLeftInitialX] ; the sorce Y value
mov ah , [sorceY] ; initial base X
call get_XY_Location
pop di ; get (x,y) pointer for the begin of sorce line

;now we begin copying si is our temp register
mov cx , 48 ; loop for the whole line
copyingLineLabelData:
; copy from the video memory in es to the ds
mov si , [word ptr es:di] ; move coll from video memory to temp register
mov [word ptr bx] ,si ; move the coll from video memory to the data segment

add di , 2 ; move to the next coll
add bx , 2 ; move bx to the next word in data segment

loop copyingLineLabelData

; initialize for the destenation and the moving from the extra segment to the destenatiot
mov bx , offset TempForCopyLines
;prep for build di begin line pointer

mov al , [baseLeftInitialX] ; the destenation Y value
mov ah , [destY] ; initial base X
call get_XY_Location
pop di

;now we begin copying si is our temp register (copying from data seg to video memory)
mov cx , 48 ; loop for the whole line
copyingLineLabelVideo:
; copy from the data segment back to video memory
mov si , [word ptr bx] ; move the video coll to temp register 
mov [word ptr es:di] , si ; move the temp register to the video momory

add di , 2 ; move to the next coll
add bx , 2 ; move bx to the next word in data segment

loop copyingLineLabelVideo


pop di
pop si
pop dx
pop cx
pop ax
pop bx

ret
endp copyLine


proc copyAllTheLinesDownToErazeLine
; copy all the lines one line down begin from destenation line
;first destenation line in al
push ax

push ax
mov ah , al 
mov al , [baseLeftInitialX]
call erazeLine
pop ax

xor ah ,ah

downAndEraze:

mov [destY] , al
dec al
mov [sorceY] , al
push ax
call copyLine
pop ax

push ax
mov ah , al 
mov al , [baseLeftInitialX]
call erazeLine
pop ax


cmp al , 3
jne downAndEraze


push ax
mov ah , 3 
mov al , [baseLeftInitialX]
call erazeLine
pop ax



pop ax
ret
endp copyAllTheLinesDownToErazeLine




proc erazeFullRawsAndMoveAllDown
;if line is full it eraze it and move all of the other lines down
push ax

erazeFullLines:

call checkForErasingRaw
pop ax
cmp al , 0
je sof_erazeFullRawsAndMoveAllDown; there are no full lines
; there is a line to eraze

startErazingLines:
call checkForErasingRaw
pop ax

call copyAllTheLinesDownToErazeLine

call checkForErasingRaw
pop ax
cmp al , 0
jne startErazingLines



sof_erazeFullRawsAndMoveAllDown:

pop ax
ret
endp erazeFullRawsAndMoveAllDown







proc initialGame
; prepare the screen for starting game 

push ax

mov ax, 0b800h         ; start address of text video memory
	                       ; 80 columns * 25 rows * 2 bytes per character:
						   ; low byte = character code; high byte = attribute (background+color)
	mov es, ax

	call black

	call draw_baselines

	mov al , 0
	mov [score] , al

	call printScore
pop ax



ret
endp initialGame





proc playGame
newKubeInitialize:
	call initialize


	
	myLoopGame:
	call moveSidesByKeys
	call delay
	call canDown
	pop ax
    cmp ax , 1
	jne finishKubeMoving

	call moveDown
	jmp myLoopGame
	

	finishKubeMoving:
	call updateScore

	call setForLoseAndDo

	call erazeFullRawsAndMoveAllDown
	jmp newKubeInitialize


ret
endp playGame




proc Goodbye
push ax
push dx

mov ah , 09h
mov dx , offset GoodbyeScreen
int 21h

pop dx
pop ax

call finish

ret
endp Goodbye





proc finish

exit:
	mov ax, 4c00h
	int 21h

ret
endp finish


start:; my start lable
	mov ax, @data
	mov ds, ax

	call enterTheGame

	call initialGame

	call playGame
	
	
	

	
call finish
END start


