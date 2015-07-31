handling
handleCSICode: aCharacter
	"Handle CSI character."

	aCharacter == $A
		ifTrue: [ self shell acceptArrowUp ].

	aCharacter == $B
		ifTrue: [ self shell acceptArrowDown ].

	self readMode: #regular