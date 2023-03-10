.text

#include <asm_setup.S>

.align 4

#Edit some Y-position-related constants in various states if nybble 12 is enabled

.global GakeNokoMove #Also FoolMove
GakeNokoMove:
	lwz r9, 4(r30)
	lis r10, twenty_four_or_alt_f@h
	ori r10, r10, twenty_four_or_alt_f@l
	clrlslwi r9, r9, 31, 2
	lfsx f0, r10, r9
	blr

.global GakeNokoFall
GakeNokoFall:
	lwz r9, 4(r30)
	lis r10, thirty_one_or_alt_f@h
	ori r10, r10, thirty_one_or_alt_f@l
	clrlslwi r9, r9, 31, 2
	add r5, r10, r9
	blr


.data

twenty_four_or_alt_f:
	.float 24.0
	.float 8.0

thirty_one_or_alt_f:
	.float 31.0
	.float 15.0