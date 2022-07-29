	move.l #text(pc),-(sp)
	move.w #9,-(sp)
	trap #1
	addq.l #6,sp

	move.w #8,-(sp)
	trap #1
	addq.l #2,sp

	move.w #0,-(sp)
	trap #1

text:   dc.b "test...",0
