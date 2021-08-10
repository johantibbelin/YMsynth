; Play routine 4bit sample
; A0 - adress to sample
; D0 - sample length
; D1 - numer of repeats 0 stop

	move.l a0,s_adr(pc)
	move.l d0,s_len(pc)
	move.l d1,s_reps(pc)
	move.l a0,d1
	add.l d0,d1
	move.l d1,s_sadr(pc)

play    move.l s_padr(pc),a0
	move.b #8,$ff8200
	move.b (a0)+,$ff8202
	move.l a0,s_padr(pc)
	bclr.b #5,$ffa0f
	rte

s_adr	ds.l 1
s_len   ds.l 1
s_reps	ds.l 1
s_sadr  ds.l 1
s_padr  ds.l 1 