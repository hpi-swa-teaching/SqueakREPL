handling
handleCSICode: aCharacter
	"Handle CSI character."

	self readMode: #regular.

	aCharacter == $A
		ifTrue: [ self shell acceptArrowUp. ^self  ].

	aCharacter == $B
		ifTrue: [ self shell acceptArrowDown. ^self ].

	aCharacter == $C
		ifTrue: [ self shell acceptArrowRight. ^self ].

	aCharacter == $D
		ifTrue: [ self shell acceptArrowLeft. ^self ].

