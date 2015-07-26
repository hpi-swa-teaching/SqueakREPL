evaluating
handleEscapeCode: aCharacter 
	"Handle CSI character."
	Transcript show: 'ESCAPE ';
		 show: aCharacter asInteger;
		 cr.
	aCharacter asInteger = 7
		ifTrue: [self debugging
				ifTrue: [self debugging: false.
					self send: self startSymbol.
					^ self].
			self completing
				ifTrue: [self clearCompletion]].
	(REPLTelnet isEscapeCode: aCharacter asInteger)
		ifTrue: [self awaitEscapeCode]