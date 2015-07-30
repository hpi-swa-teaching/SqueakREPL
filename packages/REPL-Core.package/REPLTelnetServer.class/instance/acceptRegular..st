keys
acceptRegular: aCharacter 

	self isDebugging 
		ifTrue: [ self acceptForDebugging: aCharacter ].

	self appendInput: aCharacter.
	self print: aCharacter asString.