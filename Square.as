opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F690
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 13 "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF ;#
	FNCALL	_main,_init_hardware
	FNCALL	_main,_readSensors
	FNCALL	_main,_forward
	FNCALL	_main,_stop
	FNCALL	_main,_flashRSL
	FNCALL	_main,_sharpTurnRight
	FNCALL	_main,_scanBarCode
	FNCALL	_main,_left
	FNCALL	_main,_right
	FNCALL	_scanBarCode,_forward
	FNCALL	_scanBarCode,_readSensors
	FNCALL	_scanBarCode,_stop
	FNCALL	_init_hardware,_flashRSL
	FNCALL	_sharpTurnRight,_forward
	FNCALL	_sharpTurnRight,_stop
	FNCALL	_sharpTurnRight,_spinRight
	FNCALL	_sharpTurnRight,_runADC
	FNCALL	_sharpTurnRight,_spinLeft
	FNCALL	_readSensors,_runADC
	FNROOT	_main
	global	_LEFT_THRESHOLD
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	24
_LEFT_THRESHOLD:
	retlw	08Ch
	retlw	0

	global	_RIGHT_THRESHOLD
psect	strings
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	25
_RIGHT_THRESHOLD:
	retlw	0A6h
	retlw	0

	global	_LEFT_THRESHOLD
	global	_RIGHT_THRESHOLD
	global	_counter
	global	_leftSensor
	global	_rightSensor
	global	_ADCON0
_ADCON0	set	31
	global	_ADCON0bits
_ADCON0bits	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_RA0
_RA0	set	40
	global	_RA5
_RA5	set	45
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"Square.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_counter:
       ds      2

_leftSensor:
       ds      2

_rightSensor:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_hardware
?_init_hardware:	; 0 bytes @ 0x0
	global	?_readSensors
?_readSensors:	; 0 bytes @ 0x0
	global	??_readSensors
??_readSensors:	; 0 bytes @ 0x0
	global	?_forward
?_forward:	; 0 bytes @ 0x0
	global	??_forward
??_forward:	; 0 bytes @ 0x0
	global	?_stop
?_stop:	; 0 bytes @ 0x0
	global	??_stop
??_stop:	; 0 bytes @ 0x0
	global	?_flashRSL
?_flashRSL:	; 0 bytes @ 0x0
	global	?_sharpTurnRight
?_sharpTurnRight:	; 0 bytes @ 0x0
	global	??_sharpTurnRight
??_sharpTurnRight:	; 0 bytes @ 0x0
	global	?_left
?_left:	; 0 bytes @ 0x0
	global	??_left
??_left:	; 0 bytes @ 0x0
	global	?_right
?_right:	; 0 bytes @ 0x0
	global	??_right
??_right:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_spinLeft
?_spinLeft:	; 0 bytes @ 0x0
	global	??_spinLeft
??_spinLeft:	; 0 bytes @ 0x0
	global	?_spinRight
?_spinRight:	; 0 bytes @ 0x0
	global	??_spinRight
??_spinRight:	; 0 bytes @ 0x0
	global	?_runADC
?_runADC:	; 0 bytes @ 0x0
	global	??_runADC
??_runADC:	; 0 bytes @ 0x0
	global	flashRSL@count
flashRSL@count:	; 2 bytes @ 0x0
	ds	2
	global	??_flashRSL
??_flashRSL:	; 0 bytes @ 0x2
	global	?_scanBarCode
?_scanBarCode:	; 2 bytes @ 0x2
	ds	2
	global	??_scanBarCode
??_scanBarCode:	; 0 bytes @ 0x4
	global	flashRSL@i
flashRSL@i:	; 2 bytes @ 0x4
	ds	2
	global	??_init_hardware
??_init_hardware:	; 0 bytes @ 0x6
	ds	1
	global	scanBarCode@i
scanBarCode@i:	; 2 bytes @ 0x7
	ds	2
	global	scanBarCode@count
scanBarCode@count:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@code
main@code:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 0, constant 4, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      2       8
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?_scanBarCode	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_scanBarCode
;;   _scanBarCode->_readSensors
;;   _init_hardware->_flashRSL
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0     141
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      2     2      0
;;                      _init_hardware
;;                        _readSensors
;;                            _forward
;;                               _stop
;;                           _flashRSL
;;                     _sharpTurnRight
;;                        _scanBarCode
;;                               _left
;;                              _right
;; ---------------------------------------------------------------------------------
;; (1) _scanBarCode                                          9     7      2      26
;;                                              2 COMMON     9     7      2
;;                            _forward
;;                        _readSensors
;;                               _stop
;; ---------------------------------------------------------------------------------
;; (1) _init_hardware                                        0     0      0      46
;;                           _flashRSL
;; ---------------------------------------------------------------------------------
;; (1) _sharpTurnRight                                       3     3      0       0
;;                                              0 COMMON     3     3      0
;;                            _forward
;;                               _stop
;;                          _spinRight
;;                             _runADC
;;                           _spinLeft
;; ---------------------------------------------------------------------------------
;; (1) _flashRSL                                             6     4      2      46
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (2) _readSensors                                          2     2      0       0
;;                                              0 COMMON     2     2      0
;;                             _runADC
;; ---------------------------------------------------------------------------------
;; (3) _runADC                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _spinRight                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _spinLeft                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _right                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _left                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _stop                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _forward                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_hardware
;;     _flashRSL
;;   _readSensors
;;     _runADC
;;   _forward
;;   _stop
;;   _flashRSL
;;   _sharpTurnRight
;;     _forward
;;     _stop
;;     _spinRight
;;     _runADC
;;     _spinLeft
;;   _scanBarCode
;;     _forward
;;     _readSensors
;;       _runADC
;;     _stop
;;   _left
;;   _right
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      2       8       3       10.0%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      16       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      19      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 46 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  code            2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       2       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init_hardware
;;		_readSensors
;;		_forward
;;		_stop
;;		_flashRSL
;;		_sharpTurnRight
;;		_scanBarCode
;;		_left
;;		_right
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	46
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l3362:	
;Robot2.c: 47: init_hardware();
	fcall	_init_hardware
	line	49
;Robot2.c: 49: while(RA0 == 1){}
	goto	l917
	
l918:	
	
l917:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l917
u2470:
	goto	l920
	
l919:	
	line	51
;Robot2.c: 51: while(1)
	
l920:	
	line	53
;Robot2.c: 52: {
;Robot2.c: 53: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	55
	
l3364:	
;Robot2.c: 55: readSensors();
	fcall	_readSensors
	line	57
	
l3366:	
;Robot2.c: 57: if((leftSensor >= LEFT_THRESHOLD) && (rightSensor >= RIGHT_THRESHOLD))
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_leftSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2485
	movf	0+(??_main+0)+0,w
	subwf	(_leftSensor),w
u2485:

	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l3400
u2480:
	
l3368:	
	movlw	(_RIGHT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rightSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2495
	movf	0+(??_main+0)+0,w
	subwf	(_rightSensor),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l3400
u2490:
	line	59
	
l3370:	
;Robot2.c: 58: {
;Robot2.c: 59: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	60
;Robot2.c: 60: RC0 = 1;
	bsf	(56/8),(56)&7
	line	63
;Robot2.c: 63: while ((leftSensor >= LEFT_THRESHOLD) && (rightSensor >= RIGHT_THRESHOLD))
	goto	l3376
	
l923:	
	line	65
	
l3372:	
;Robot2.c: 64: {
;Robot2.c: 65: forward();
	fcall	_forward
	line	66
	
l3374:	
;Robot2.c: 66: readSensors();
	fcall	_readSensors
	goto	l3376
	line	67
	
l922:	
	line	63
	
l3376:	
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_leftSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2505
	movf	0+(??_main+0)+0,w
	subwf	(_leftSensor),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l3380
u2500:
	
l3378:	
	movlw	(_RIGHT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rightSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2515
	movf	0+(??_main+0)+0,w
	subwf	(_rightSensor),w
u2515:

	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l3372
u2510:
	goto	l3380
	
l925:	
	goto	l3380
	
l926:	
	line	69
	
l3380:	
;Robot2.c: 67: }
;Robot2.c: 69: stop();
	fcall	_stop
	line	70
	
l3382:	
;Robot2.c: 70: flashRSL(counter);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_counter+1),w
	clrf	(?_flashRSL+1)
	addwf	(?_flashRSL+1)
	movf	(_counter),w
	clrf	(?_flashRSL)
	addwf	(?_flashRSL)

	fcall	_flashRSL
	line	71
	
l3384:	
;Robot2.c: 71: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	72
	
l3386:	
;Robot2.c: 72: RC0 = 0;
	bcf	(56/8),(56)&7
	line	76
;Robot2.c: 74: int code;
;Robot2.c: 76: if(counter==2){
	movlw	02h
	xorwf	(_counter),w
	iorwf	(_counter+1),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l3390
u2520:
	line	77
	
l3388:	
;Robot2.c: 77: _delay(300000);
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	134
movwf	((??_main+0)+0+1),f
	movlw	153
movwf	((??_main+0)+0),f
u2607:
	decfsz	((??_main+0)+0),f
	goto	u2607
	decfsz	((??_main+0)+0+1),f
	goto	u2607
	decfsz	((??_main+0)+0+2),f
	goto	u2607
opt asmopt_on

	line	78
;Robot2.c: 78: }
	goto	l3398
	line	80
	
l927:	
	
l3390:	
;Robot2.c: 80: else if(counter==3){
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_counter),w
	iorwf	(_counter+1),w
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l3398
u2530:
	line	81
	
l3392:	
;Robot2.c: 81: sharpTurnRight();
	fcall	_sharpTurnRight
	line	82
;Robot2.c: 82: code=scanBarCode();
	fcall	_scanBarCode
	movf	(1+(?_scanBarCode)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@code+1)
	addwf	(main@code+1)
	movf	(0+(?_scanBarCode)),w
	clrf	(main@code)
	addwf	(main@code)

	line	88
	
l3394:	
;Robot2.c: 88: flashRSL(code);
	movf	(main@code+1),w
	clrf	(?_flashRSL+1)
	addwf	(?_flashRSL+1)
	movf	(main@code),w
	clrf	(?_flashRSL)
	addwf	(?_flashRSL)

	fcall	_flashRSL
	line	89
	
l3396:	
;Robot2.c: 89: forward();
	fcall	_forward
	goto	l3398
	line	90
	
l929:	
	goto	l3398
	line	108
	
l928:	
	
l3398:	
;Robot2.c: 90: }
;Robot2.c: 108: counter++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_counter),f
	skipnc
	incf	(_counter+1),f
	movlw	high(01h)
	addwf	(_counter+1),f
	line	109
;Robot2.c: 109: }
	goto	l920
	line	110
	
l921:	
	
l3400:	
;Robot2.c: 110: else if ((leftSensor >= LEFT_THRESHOLD) && (rightSensor < RIGHT_THRESHOLD))
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_leftSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2545
	movf	0+(??_main+0)+0,w
	subwf	(_leftSensor),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l3408
u2540:
	
l3402:	
	movlw	(_RIGHT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rightSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2555
	movf	0+(??_main+0)+0,w
	subwf	(_rightSensor),w
u2555:

	skipnc
	goto	u2551
	goto	u2550
u2551:
	goto	l3408
u2550:
	line	112
	
l3404:	
;Robot2.c: 111: {
;Robot2.c: 112: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	113
	
l3406:	
;Robot2.c: 113: left();
	fcall	_left
	line	115
;Robot2.c: 115: }
	goto	l920
	line	116
	
l931:	
	
l3408:	
;Robot2.c: 116: else if ((rightSensor >= RIGHT_THRESHOLD) && (leftSensor < LEFT_THRESHOLD))
	movlw	(_RIGHT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rightSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2565
	movf	0+(??_main+0)+0,w
	subwf	(_rightSensor),w
u2565:

	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l3416
u2560:
	
l3410:	
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_leftSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2575
	movf	0+(??_main+0)+0,w
	subwf	(_leftSensor),w
u2575:

	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l3416
u2570:
	line	118
	
l3412:	
;Robot2.c: 117: {
;Robot2.c: 118: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	119
	
l3414:	
;Robot2.c: 119: right();
	fcall	_right
	line	120
;Robot2.c: 120: }
	goto	l920
	line	121
	
l933:	
	
l3416:	
;Robot2.c: 121: else if ((rightSensor < RIGHT_THRESHOLD) && (leftSensor < LEFT_THRESHOLD))
	movlw	(_RIGHT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rightSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2585
	movf	0+(??_main+0)+0,w
	subwf	(_rightSensor),w
u2585:

	skipnc
	goto	u2581
	goto	u2580
u2581:
	goto	l920
u2580:
	
l3418:	
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	fcall	stringdir
	movwf	(??_main+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_leftSensor+1),w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u2595
	movf	0+(??_main+0)+0,w
	subwf	(_leftSensor),w
u2595:

	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l920
u2590:
	line	123
	
l3420:	
;Robot2.c: 122: {
;Robot2.c: 123: forward();
	fcall	_forward
	line	124
	
l3422:	
;Robot2.c: 124: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	125
	
l3424:	
;Robot2.c: 125: RC0 = 0;
	bcf	(56/8),(56)&7
	goto	l920
	line	126
	
l935:	
	goto	l920
	line	129
	
l934:	
	goto	l920
	
l932:	
	goto	l920
	
l930:	
	goto	l920
	
l936:	
	line	51
	goto	l920
	
l937:	
	line	130
	
l938:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_scanBarCode
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _scanBarCode *****************
;; Defined at:
;;		line 293 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] int 
;;  count           2    9[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_forward
;;		_readSensors
;;		_stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	293
	global	__size_of_scanBarCode
	__size_of_scanBarCode	equ	__end_of_scanBarCode-_scanBarCode
	
_scanBarCode:	
	opt	stack 5
; Regs used in _scanBarCode: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	294
	
l3340:	
;Robot2.c: 294: forward();
	fcall	_forward
	line	295
	
l3342:	
;Robot2.c: 295: int count=0;
	clrf	(scanBarCode@count)
	clrf	(scanBarCode@count+1)
	line	296
	
l3344:	
;Robot2.c: 296: for(int i=0;i<1800000;i++){
	clrf	(scanBarCode@i)
	clrf	(scanBarCode@i+1)
	goto	l3348
	
l3346:	
	goto	l3356
	
l985:	
	line	298
	
l3348:	
;Robot2.c: 298: readSensors();
	fcall	_readSensors
	line	299
	
l3350:	
;Robot2.c: 299: if((leftSensor >= LEFT_THRESHOLD) && (rightSensor >= RIGHT_THRESHOLD)){
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_scanBarCode+0)+0
	fcall	stringdir
	movwf	(??_scanBarCode+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_leftSensor+1),w
	xorlw	80h
	movwf	(??_scanBarCode+2)+0
	movf	1+(??_scanBarCode+0)+0,w
	xorlw	80h
	subwf	(??_scanBarCode+2)+0,w
	skipz
	goto	u2455
	movf	0+(??_scanBarCode+0)+0,w
	subwf	(_leftSensor),w
u2455:

	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l987
u2450:
	
l3352:	
	movlw	(_RIGHT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_scanBarCode+0)+0
	fcall	stringdir
	movwf	(??_scanBarCode+0)+0+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rightSensor+1),w
	xorlw	80h
	movwf	(??_scanBarCode+2)+0
	movf	1+(??_scanBarCode+0)+0,w
	xorlw	80h
	subwf	(??_scanBarCode+2)+0,w
	skipz
	goto	u2465
	movf	0+(??_scanBarCode+0)+0,w
	subwf	(_rightSensor),w
u2465:

	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l987
u2460:
	line	301
	
l3354:	
;Robot2.c: 301: count++;
	movlw	low(01h)
	addwf	(scanBarCode@count),f
	skipnc
	incf	(scanBarCode@count+1),f
	movlw	high(01h)
	addwf	(scanBarCode@count+1),f
	line	303
	
l987:	
	line	296
	movlw	low(01h)
	addwf	(scanBarCode@i),f
	skipnc
	incf	(scanBarCode@i+1),f
	movlw	high(01h)
	addwf	(scanBarCode@i+1),f
	goto	l3348
	
l986:	
	line	306
	
l3356:	
;Robot2.c: 303: }
;Robot2.c: 305: }
;Robot2.c: 306: stop();
	fcall	_stop
	line	307
	
l3358:	
;Robot2.c: 307: return count;
	movf	(scanBarCode@count+1),w
	clrf	(?_scanBarCode+1)
	addwf	(?_scanBarCode+1)
	movf	(scanBarCode@count),w
	clrf	(?_scanBarCode)
	addwf	(?_scanBarCode)

	goto	l988
	
l3360:	
	line	309
	
l988:	
	return
	opt stack 0
GLOBAL	__end_of_scanBarCode
	__end_of_scanBarCode:
;; =============== function _scanBarCode ends ============

	signat	_scanBarCode,90
	global	_init_hardware
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _init_hardware *****************
;; Defined at:
;;		line 135 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_flashRSL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	135
	global	__size_of_init_hardware
	__size_of_init_hardware	equ	__end_of_init_hardware-_init_hardware
	
_init_hardware:	
	opt	stack 6
; Regs used in _init_hardware: [wreg+status,2+status,0+pclath+cstack]
	line	138
	
l3320:	
;Robot2.c: 138: ANSEL = 0b00000000;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	139
	
l3322:	
;Robot2.c: 139: ANSELH = 0b00001010;
	movlw	(0Ah)
	movwf	(287)^0100h	;volatile
	line	143
	
l3324:	
;Robot2.c: 143: ADCON0 = 0b00101101;
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	147
	
l3326:	
;Robot2.c: 147: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	148
	
l3328:	
;Robot2.c: 148: TRISB = 0b00100000;
	movlw	(020h)
	movwf	(134)^080h	;volatile
	line	149
	
l3330:	
;Robot2.c: 149: TRISC = 0b10000000;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	152
	
l3332:	
;Robot2.c: 152: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	153
	
l3334:	
;Robot2.c: 153: PORTB = 0b00000000;
	clrf	(6)	;volatile
	line	154
	
l3336:	
;Robot2.c: 154: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	158
	
l3338:	
;Robot2.c: 158: flashRSL(3);
	movlw	low(03h)
	movwf	(?_flashRSL)
	movlw	high(03h)
	movwf	((?_flashRSL))+1
	fcall	_flashRSL
	line	160
	
l941:	
	return
	opt stack 0
GLOBAL	__end_of_init_hardware
	__end_of_init_hardware:
;; =============== function _init_hardware ends ============

	signat	_init_hardware,88
	global	_sharpTurnRight
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _sharpTurnRight *****************
;; Defined at:
;;		line 248 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_forward
;;		_stop
;;		_spinRight
;;		_runADC
;;		_spinLeft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	248
	global	__size_of_sharpTurnRight
	__size_of_sharpTurnRight	equ	__end_of_sharpTurnRight-_sharpTurnRight
	
_sharpTurnRight:	
	opt	stack 6
; Regs used in _sharpTurnRight: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	249
	
l3298:	
;Robot2.c: 249: forward();
	fcall	_forward
	line	250
	
l3300:	
;Robot2.c: 250: _delay(500000);
	opt asmopt_off
movlw  3
movwf	((??_sharpTurnRight+0)+0+2),f
movlw	138
movwf	((??_sharpTurnRight+0)+0+1),f
	movlw	86
movwf	((??_sharpTurnRight+0)+0),f
u2617:
	decfsz	((??_sharpTurnRight+0)+0),f
	goto	u2617
	decfsz	((??_sharpTurnRight+0)+0+1),f
	goto	u2617
	decfsz	((??_sharpTurnRight+0)+0+2),f
	goto	u2617
	nop2
opt asmopt_on

	line	251
	
l3302:	
;Robot2.c: 251: stop();
	fcall	_stop
	line	252
	
l3304:	
;Robot2.c: 252: ADCON0bits.CHS = 0b1001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	andlw	not (((1<<4)-1)<<2)
	iorlw	(09h & ((1<<4)-1))<<2
	movwf	(31)	;volatile
	line	253
	
l3306:	
;Robot2.c: 253: spinRight();
	fcall	_spinRight
	goto	l3308
	line	255
;Robot2.c: 255: do
	
l971:	
	line	257
	
l3308:	
;Robot2.c: 256: {
;Robot2.c: 257: runADC();
	fcall	_runADC
	line	258
	
l3310:	
;Robot2.c: 258: leftSensor=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_sharpTurnRight+0)+0
	clrf	(??_sharpTurnRight+0)+0+1
	movf	0+(??_sharpTurnRight+0)+0,w
	movwf	(_leftSensor)
	movf	1+(??_sharpTurnRight+0)+0,w
	movwf	(_leftSensor+1)
	line	260
	
l3312:	
;Robot2.c: 260: } while(leftSensor <=LEFT_THRESHOLD);
	movlw	(_LEFT_THRESHOLD-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sharpTurnRight+0)+0
	fcall	stringdir
	movwf	(??_sharpTurnRight+0)+0+1
	movf	1+(??_sharpTurnRight+0)+0,w
	xorlw	80h
	movwf	(??_sharpTurnRight+2)+0
	movf	(_leftSensor+1),w
	xorlw	80h
	subwf	(??_sharpTurnRight+2)+0,w
	skipz
	goto	u2445
	movf	(_leftSensor),w
	subwf	0+(??_sharpTurnRight+0)+0,w
u2445:

	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l3308
u2440:
	goto	l3314
	
l972:	
	line	261
	
l3314:	
;Robot2.c: 261: spinLeft();
	fcall	_spinLeft
	line	262
	
l3316:	
;Robot2.c: 262: _delay(100000);
	opt asmopt_off
movlw	130
movwf	((??_sharpTurnRight+0)+0+1),f
	movlw	221
movwf	((??_sharpTurnRight+0)+0),f
u2627:
	decfsz	((??_sharpTurnRight+0)+0),f
	goto	u2627
	decfsz	((??_sharpTurnRight+0)+0+1),f
	goto	u2627
	nop2
opt asmopt_on

	line	264
	
l3318:	
;Robot2.c: 264: stop();
	fcall	_stop
	line	265
	
l973:	
	return
	opt stack 0
GLOBAL	__end_of_sharpTurnRight
	__end_of_sharpTurnRight:
;; =============== function _sharpTurnRight ends ============

	signat	_sharpTurnRight,88
	global	_flashRSL
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _flashRSL *****************
;; Defined at:
;;		line 270 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;  count           2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	270
	global	__size_of_flashRSL
	__size_of_flashRSL	equ	__end_of_flashRSL-_flashRSL
	
_flashRSL:	
	opt	stack 7
; Regs used in _flashRSL: [wreg+status,2]
	line	271
	
l3292:	
;Robot2.c: 271: for (int i = 0; i < count; i++)
	clrf	(flashRSL@i)
	clrf	(flashRSL@i+1)
	goto	l976
	line	272
	
l977:	
	line	273
;Robot2.c: 272: {
;Robot2.c: 273: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	274
	
l3294:	
;Robot2.c: 274: _delay(100000);
	opt asmopt_off
movlw	130
movwf	((??_flashRSL+0)+0+1),f
	movlw	221
movwf	((??_flashRSL+0)+0),f
u2637:
	decfsz	((??_flashRSL+0)+0),f
	goto	u2637
	decfsz	((??_flashRSL+0)+0+1),f
	goto	u2637
	nop2
opt asmopt_on

	line	275
	
l3296:	
;Robot2.c: 275: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	276
;Robot2.c: 276: _delay(100000);
	opt asmopt_off
movlw	130
movwf	((??_flashRSL+0)+0+1),f
	movlw	221
movwf	((??_flashRSL+0)+0),f
u2647:
	decfsz	((??_flashRSL+0)+0),f
	goto	u2647
	decfsz	((??_flashRSL+0)+0+1),f
	goto	u2647
	nop2
opt asmopt_on

	line	271
	movlw	low(01h)
	addwf	(flashRSL@i),f
	skipnc
	incf	(flashRSL@i+1),f
	movlw	high(01h)
	addwf	(flashRSL@i+1),f
	
l976:	
	movf	(flashRSL@i+1),w
	xorlw	80h
	movwf	(??_flashRSL+0)+0
	movf	(flashRSL@count+1),w
	xorlw	80h
	subwf	(??_flashRSL+0)+0,w
	skipz
	goto	u2435
	movf	(flashRSL@count),w
	subwf	(flashRSL@i),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l977
u2430:
	goto	l979
	
l978:	
	line	278
	
l979:	
	return
	opt stack 0
GLOBAL	__end_of_flashRSL
	__end_of_flashRSL:
;; =============== function _flashRSL ends ============

	signat	_flashRSL,4216
	global	_readSensors
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _readSensors *****************
;; Defined at:
;;		line 283 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_runADC
;; This function is called by:
;;		_main
;;		_scanBarCode
;;		_sharpTurnLeft
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	283
	global	__size_of_readSensors
	__size_of_readSensors	equ	__end_of_readSensors-_readSensors
	
_readSensors:	
	opt	stack 5
; Regs used in _readSensors: [wreg+status,2+status,0+pclath+cstack]
	line	284
	
l3282:	
;Robot2.c: 284: ADCON0bits.CHS = 0b1001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	andlw	not (((1<<4)-1)<<2)
	iorlw	(09h & ((1<<4)-1))<<2
	movwf	(31)	;volatile
	line	285
	
l3284:	
;Robot2.c: 285: runADC();
	fcall	_runADC
	line	286
	
l3286:	
;Robot2.c: 286: leftSensor = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_readSensors+0)+0
	clrf	(??_readSensors+0)+0+1
	movf	0+(??_readSensors+0)+0,w
	movwf	(_leftSensor)
	movf	1+(??_readSensors+0)+0,w
	movwf	(_leftSensor+1)
	line	288
	
l3288:	
;Robot2.c: 288: ADCON0bits.CHS = 0b1011;
	movf	(31),w	;volatile
	andlw	not (((1<<4)-1)<<2)
	iorlw	(0Bh & ((1<<4)-1))<<2
	movwf	(31)	;volatile
	line	289
	
l3290:	
;Robot2.c: 289: runADC();
	fcall	_runADC
	line	290
;Robot2.c: 290: rightSensor = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_readSensors+0)+0
	clrf	(??_readSensors+0)+0+1
	movf	0+(??_readSensors+0)+0,w
	movwf	(_rightSensor)
	movf	1+(??_readSensors+0)+0,w
	movwf	(_rightSensor+1)
	line	291
	
l982:	
	return
	opt stack 0
GLOBAL	__end_of_readSensors
	__end_of_readSensors:
;; =============== function _readSensors ends ============

	signat	_readSensors,88
	global	_runADC
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _runADC *****************
;; Defined at:
;;		line 234 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sharpTurnRight
;;		_readSensors
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	234
	global	__size_of_runADC
	__size_of_runADC	equ	__end_of_runADC-_runADC
	
_runADC:	
	opt	stack 5
; Regs used in _runADC: []
	line	235
	
l3264:	
;Robot2.c: 235: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	236
;Robot2.c: 236: while (GO_DONE == 1) {}
	goto	l965
	
l966:	
	
l965:	
	btfsc	(249/8),(249)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l965
u2410:
	goto	l968
	
l967:	
	line	237
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_runADC
	__end_of_runADC:
;; =============== function _runADC ends ============

	signat	_runADC,88
	global	_spinRight
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function _spinRight *****************
;; Defined at:
;;		line 215 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sharpTurnRight
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	215
	global	__size_of_spinRight
	__size_of_spinRight	equ	__end_of_spinRight-_spinRight
	
_spinRight:	
	opt	stack 6
; Regs used in _spinRight: []
	line	216
	
l3262:	
;Robot2.c: 216: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	217
;Robot2.c: 217: RC1 = 1;
	bsf	(57/8),(57)&7
	line	218
;Robot2.c: 218: RC4 = 1;
	bsf	(60/8),(60)&7
	line	219
;Robot2.c: 219: RC5 = 0;
	bcf	(61/8),(61)&7
	line	220
	
l959:	
	return
	opt stack 0
GLOBAL	__end_of_spinRight
	__end_of_spinRight:
;; =============== function _spinRight ends ============

	signat	_spinRight,88
	global	_spinLeft
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function _spinLeft *****************
;; Defined at:
;;		line 205 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sharpTurnRight
;;		_sharpTurnLeft
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	205
	global	__size_of_spinLeft
	__size_of_spinLeft	equ	__end_of_spinLeft-_spinLeft
	
_spinLeft:	
	opt	stack 6
; Regs used in _spinLeft: []
	line	206
	
l3260:	
;Robot2.c: 206: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	207
;Robot2.c: 207: RC1 = 0;
	bcf	(57/8),(57)&7
	line	208
;Robot2.c: 208: RC4 = 0;
	bcf	(60/8),(60)&7
	line	209
;Robot2.c: 209: RC5 = 1;
	bsf	(61/8),(61)&7
	line	210
	
l956:	
	return
	opt stack 0
GLOBAL	__end_of_spinLeft
	__end_of_spinLeft:
;; =============== function _spinLeft ends ============

	signat	_spinLeft,88
	global	_right
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function _right *****************
;; Defined at:
;;		line 195 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text365
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	195
	global	__size_of_right
	__size_of_right	equ	__end_of_right-_right
	
_right:	
	opt	stack 7
; Regs used in _right: []
	line	196
	
l3258:	
;Robot2.c: 196: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	197
;Robot2.c: 197: RC1 = 1;
	bsf	(57/8),(57)&7
	line	198
;Robot2.c: 198: RC4 = 1;
	bsf	(60/8),(60)&7
	line	199
;Robot2.c: 199: RC5 = 0;
	bcf	(61/8),(61)&7
	line	200
	
l953:	
	return
	opt stack 0
GLOBAL	__end_of_right
	__end_of_right:
;; =============== function _right ends ============

	signat	_right,88
	global	_left
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _left *****************
;; Defined at:
;;		line 185 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text366
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	185
	global	__size_of_left
	__size_of_left	equ	__end_of_left-_left
	
_left:	
	opt	stack 7
; Regs used in _left: []
	line	186
	
l3256:	
;Robot2.c: 186: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	187
;Robot2.c: 187: RC1 = 0;
	bcf	(57/8),(57)&7
	line	188
;Robot2.c: 188: RC4 = 1;
	bsf	(60/8),(60)&7
	line	189
;Robot2.c: 189: RC5 = 1;
	bsf	(61/8),(61)&7
	line	190
	
l950:	
	return
	opt stack 0
GLOBAL	__end_of_left
	__end_of_left:
;; =============== function _left ends ============

	signat	_left,88
	global	_stop
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _stop *****************
;; Defined at:
;;		line 224 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sharpTurnRight
;;		_scanBarCode
;;		_sharpTurnLeft
;; This function uses a non-reentrant model
;;
psect	text367
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	224
	global	__size_of_stop
	__size_of_stop	equ	__end_of_stop-_stop
	
_stop:	
	opt	stack 6
; Regs used in _stop: []
	line	225
	
l3254:	
;Robot2.c: 225: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	226
;Robot2.c: 226: RC1 = 1;
	bsf	(57/8),(57)&7
	line	227
;Robot2.c: 227: RC4 = 1;
	bsf	(60/8),(60)&7
	line	228
;Robot2.c: 228: RC5 = 1;
	bsf	(61/8),(61)&7
	line	229
	
l962:	
	return
	opt stack 0
GLOBAL	__end_of_stop
	__end_of_stop:
;; =============== function _stop ends ============

	signat	_stop,88
	global	_forward
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _forward *****************
;; Defined at:
;;		line 165 in file "C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sharpTurnRight
;;		_scanBarCode
;;		_sharpTurnLeft
;; This function uses a non-reentrant model
;;
psect	text368
	file	"C:\Users\gula1\Documents\GitHub\Robot\Robot2.c"
	line	165
	global	__size_of_forward
	__size_of_forward	equ	__end_of_forward-_forward
	
_forward:	
	opt	stack 6
; Regs used in _forward: []
	line	166
	
l3252:	
;Robot2.c: 166: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	167
;Robot2.c: 167: RC1 = 0;
	bcf	(57/8),(57)&7
	line	168
;Robot2.c: 168: RC4 = 1;
	bsf	(60/8),(60)&7
	line	169
;Robot2.c: 169: RC5 = 0;
	bcf	(61/8),(61)&7
	line	170
	
l944:	
	return
	opt stack 0
GLOBAL	__end_of_forward
	__end_of_forward:
;; =============== function _forward ends ============

	signat	_forward,88
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
