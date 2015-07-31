keys
acceptRegular: aCharacter 

	self isDebugging 
		ifTrue: [ self debugger accept: aCharacter ].

	self appendInput: aCharacter.
	self print: aCharacter asString.