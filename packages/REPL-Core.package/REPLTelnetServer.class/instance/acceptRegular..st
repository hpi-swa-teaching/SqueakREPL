keys
acceptRegular: aCharacter 
	(aCharacter = $q and: [self isDebugging]) ifTrue: [ self endDebugging. self print: self lineSymbol. ^self ].
	self appendInput: aCharacter.
	self print: aCharacter asString.