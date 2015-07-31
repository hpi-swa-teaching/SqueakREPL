accepting
acceptRegular: aCharacter 
	"Accept regular (printable) character."

	self isDebugging 
		ifTrue: [ self debugger accept: aCharacter. ^self ].

	self isCompleting 
		ifTrue: [ self abortCompletion ].  

	self appendInput: aCharacter asString.