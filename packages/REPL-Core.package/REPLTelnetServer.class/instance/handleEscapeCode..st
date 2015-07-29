evaluating
handleEscapeCode: aCharacter
	"Handle aCharacter as escape code."
	
	self finishEscapeCode.

	aCharacter = $[
		ifTrue: [ 
			self awaitCSICode.
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

	(TelnetCharacter from: aCharacter) isEscapeCode
		ifTrue: [ self awaitEscapeCode ]