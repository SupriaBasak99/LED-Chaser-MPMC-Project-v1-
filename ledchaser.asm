ORG 00H					;start address
	MOV P2, #0FFH		;turn off the leds
	AGAIN:
	;front chasing
	MOV P2, #00000000B	;glow all the leds
	ACALL DELAY
	MOV P2, #00000001B	;turn led1 off
	ACALL DELAY
    MOV P2, #00000011B
	ACALL DELAY
    MOV P2, #00000111B
	ACALL DELAY
    MOV P2, #00001111B
	ACALL DELAY
    MOV P2, #00011111B
	ACALL DELAY
    MOV P2, #00111111B
	ACALL DELAY
    MOV P2, #01111111B
	ACALL DELAY
    MOV P2, #11111111B	;turn led 1-7 off
	ACALL DELAY

	;to chase back

    MOV P2, #11111110B	;turn led 1 on
	ACALL DELAY
    MOV P2, #11111100B
	ACALL DELAY
    MOV P2, #11111000B
	ACALL DELAY
    MOV P2, #11110000B
	ACALL DELAY
    MOV P2, #11100000B
	ACALL DELAY
    MOV P2, #11000000B
	ACALL DELAY
    MOV P2, #10000000B	;turn led 1-7 on
	ACALL DELAY
    
    LJMP AGAIN
;code for delay

DELAY:
        MOV R1,#10H
HERE3:  MOV R2,#50H
HERE2:  MOV R3,#50H
HERE:   DJNZ R3,HERE
        DJNZ R2,HERE2
        DJNZ R1,HERE3
        RET				;return to the calling block
        END	

	