handling
handleCSICode: aCharacter
	"Handle CSI character."

	aCharacter == $A
		ifTrue: [ self acceptArrowUp ].

	aCharacter == $B
		ifTrue: [ self acceptArrowDown ].

	self readMode: #regular