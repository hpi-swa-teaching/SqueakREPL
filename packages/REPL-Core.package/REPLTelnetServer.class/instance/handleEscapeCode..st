handling
handleEscapeCode: aCharacter
	"Handle aCharacter as escape code."
	
	

	aCharacter = $[
		ifTrue: [ self readMode: #csiCode. ^ self ].

	(self class isEscapeCode: aCharacter)
		ifTrue: [ self readMode: #escapeCode ]
		ifFalse: [ self readMode: #regular. ]


	