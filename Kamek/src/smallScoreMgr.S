.text
.align 4
#include <asm_setup.S>

.extern continueFromChangeSmallScore100Color
.extern continueFromChangeSmallScore1000Color1
.extern continueFromChangeSmallScore1000Color2
.extern continueFromChangeSmallScore1UPColor1
.extern continueFromChangeSmallScore1UPColor2
.extern continueFromChangePauseMenuColor

#100

.global ChangeSmallScore100Color
ChangeSmallScore100Color:
	lis r5, SmallScore100Color@h
	ori r5, r5, SmallScore100Color@l
	b continueFromChangeSmallScore100Color

#1000

.global ChangeSmallScore1000Color1
ChangeSmallScore1000Color1:
	lis r6, SmallScore1000Color1@h
	ori r6, r6, SmallScore1000Color1@l
	b continueFromChangeSmallScore1000Color1

.global ChangeSmallScore1000Color2
ChangeSmallScore1000Color2:
	lis r3, SmallScore1000Color2@h
	ori r3, r3, SmallScore1000Color2@l
	b continueFromChangeSmallScore1000Color2

#1UP

.global ChangeSmallScore1UPColor1
ChangeSmallScore1UPColor1:
	lis r5, SmallScore1UPColor1@h
	ori r5, r5, SmallScore1UPColor1@l
	b continueFromChangeSmallScore1UPColor1

.global ChangeSmallScore1UPColor2
ChangeSmallScore1UPColor2:
	lis r4, SmallScore1UPColor2@h
	ori r4, r4, SmallScore1UPColor2@l
	b continueFromChangeSmallScore1UPColor2

#Pause Menu

.global ChangePauseMenuColor
ChangePauseMenuColor:
	lis r4, PauseMenuColor1@h
	ori r4, r4, PauseMenuColor1@l
	lis r5, PauseMenuColor2@h
	ori r5, r5, PauseMenuColor2@l
	b continueFromChangePauseMenuColor

.data
.align 4

#100

.global SmallScore100Color
SmallScore100Color:
	.long 0x46FA46FF	#Luigi
	.long 0xF2A1FFFF	#Wario
	.long 0x46C8E6FF	#Blue Toad
	.long 0xFAFF50FF	#Yellow Toad
	.long 0xFAFFFFFF

#1000

.global SmallScore1000Color1
SmallScore1000Color1:
	.long 0x32FA32FF	#Luigi
	.long 0xE77AFFFF	#Wario
	.long 0x00B9DCFF	#Blue Toad
	.long 0xFFFF00FF	#Yellow Toad
	.long 0xFFFFFFFF

.global SmallScore1000Color2
SmallScore1000Color2:
	.long 0xFFFF00FF	#Luigi
	.long 0xF8D6FFFF	#Wario
	.long 0xD2FFFAFF	#Blue Toad
	.long 0xFFFFB4FF	#Yellow Toad
	.long 0xFFFFFFFF

#1UP

.global SmallScore1UPColor1
SmallScore1UPColor1:
	.long 0xD2FF00FF	#Luigi
	.long 0xF1ABFFFF	#Wario
	.long 0xD0F0FFFF	#Blue Toad
	.long 0xFFFF64FF	#Yellow Toad
	.long 0xFFFFFFFF

.global SmallScore1UPColor2
SmallScore1UPColor2:
	.long 0x197D0AFF	#Luigi
	.long 0xC179FFFF	#Wario
	.long 0x1E2DF0FF	#Blue Toad
	.long 0xFFBE00FF	#Yellow Toad
	.long 0xFFBEFFFF

#Pause Menu

.global PauseMenuColor1
PauseMenuColor1:
    .long 0x00461400    #Luigi
    .long 0x2F204100    #Wario
    .long 0x00005A00    #Blue Toad
    .long 0x28280000    #Yellow Toad
    .long 0xFFFFFFFF

.global PauseMenuColor2
PauseMenuColor2:
    .long 0x3CBE32FF    #Luigi
    .long 0xC179FFFF    #Wario
    .long 0x4178FAFF    #Blue Toad
    .long 0xFFFF3CFF    #Yellow Toad
    .long 0xFFFFFFFF