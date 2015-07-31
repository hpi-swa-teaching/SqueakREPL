keys
acceptRegular: aCharacter 

	self isDebugging 
		ifTrue: [ self debugger accept: aCharacter. ^self ].

	self isCompleting 
		ifTrue: [ self abortCompletion ].  

	self appendInput: aCharacter.
	self interface print: aCharacter asString.