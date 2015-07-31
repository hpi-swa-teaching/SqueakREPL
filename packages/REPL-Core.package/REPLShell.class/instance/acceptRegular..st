keys
acceptRegular: aCharacter 

	self isDebugging 
		ifTrue: [ self debugger accept: aCharacter. ^self ].

	self isCompleting 
		ifTrue: [ self clearCompletion ].

	self appendInput: aCharacter asString.