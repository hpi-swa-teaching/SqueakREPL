handling
handleEscapeCode: aCharacter
	"Handle aCharacter as escape code."
	
	self readMode: #regular.

	aCharacter = $[
		ifTrue: [ 
			self readMode: #csiCode.
			^ self ].
	
	"Armin, warum?
	aCharacter asciiValue = 7 
		ifTrue: [ 
			self halt.
			self debugging
				ifTrue: [ 
					self debugging: false.
					self print: self startSymbol.
					^ self ].

			self completing
				ifTrue: [ self clearCompletion ] ]."

	(self class isEscapeCode: aCharacter)
		ifTrue: [ 
			self readMode: #escapeCode ]