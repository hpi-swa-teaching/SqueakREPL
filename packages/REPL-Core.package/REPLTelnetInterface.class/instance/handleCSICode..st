handling
handleCSICode: aCharacter
	"Handle the CSI code aCharacter."

	| characterBindings |
	characterBindings := Dictionary new
		at: $A put: #acceptArrowUp;
		at: $B put: #acceptArrowDown;
		at: $C put: #acceptArrowRight;
		at: $D put: #acceptArrowLeft;
		yourself.
	self readMode: #regular.
	self shell perform: (characterBindings at: aCharacter ifAbsent: [ #yourself ])