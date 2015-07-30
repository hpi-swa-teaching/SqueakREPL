handling
handleEscapeCode: aCharacter
	"Handle aCharacter as escape code."
	
	self readMode: #regular.

	aCharacter = $[
		ifTrue: [ 
			self readMode: #csiCode.
			^ self ].

	aCharacter asciiValue = 7 
		ifTrue: [ 
			self debugging
				ifTrue: [ 
					self debugging: false.
					self send: self startSymbol.
					^ self ].

			self completing
				ifTrue: [ self clearCompletion ] ].

	(REPLTelnetCharacter from: aCharacter) isEscapeCode
		ifTrue: [ 
			self readMode: #escapeCode ]