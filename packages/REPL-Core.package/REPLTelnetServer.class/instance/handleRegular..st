handling
handleRegular: aCharacter
	"Handle aCharacter as regular character."
	
	aCharacter = REPLTelnetCharacter IAC
		ifTrue: [ self readMode: #command ].

	aCharacter = Character escape
		ifTrue: [ self readMode: #escapeCode ].

	aCharacter = Character tab
		ifTrue: [ self acceptTab ]
		ifFalse: [
			self endCompletion ]. "self handleAll"

	aCharacter asciiValue = 3 "^C ???"
		ifTrue: [ self acceptControlC ].

	(aCharacter = Character delete or: aCharacter = Character backspace)
		ifTrue: [ self acceptDelete ].

	(REPLTelnetCharacter from: aCharacter) isRegular
		ifTrue: [ self acceptRegular: aCharacter ].

	aCharacter == Character cr
		ifTrue: [ self acceptReturn ].

	aCharacter == Character null
		ifTrue: [ ^ self ].
