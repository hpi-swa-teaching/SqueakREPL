evaluating
handle: aCharacter
	"Handle input character."

	aCharacter = TelnetCharacter IAC
		ifTrue: [ 
			self awaitCommand.
			^ self ].

	self awaitingCommand
		ifTrue: [ 
			self handleCommand: aCharacter.
			^ self ].

	self awaitingOperation
		ifTrue: [ 
			self finishOperation.
			^ self ].

	self awaitingSubnegotiation
		ifTrue: [ 
			^ self ].

	self awaitingCSICode
		ifTrue: [ 
			self handleCSICode: aCharacter.
			^ self ].

	self awaitingEscapeCode
		ifTrue: [ 
			self handleEscapeCode: aCharacter.
			^ self ].

	self debugging
		ifTrue: [ 
			self debug: aCharacter.
			^ self ].

	aCharacter = Character escape
		ifTrue: [ 
			self awaitEscapeCode.
			^ self ].

	aCharacter = Character tab
		ifTrue: [ 
			self complete.
			^ self ]
		ifFalse: [ 
			self endCompletion ].

	self completing
		ifTrue: [ 
			self send: (self escapeCode: '[J').
			self clearCompletion "???" ].

	aCharacter asciiValue = 3 "^C ???"
		ifTrue: [ 
			self completing
				ifTrue: [ 
					self print: self clearCompletion.
					^ self ].
			self
				print: self lineSymbol , self clearLineUntilEnd;
				clearInput ].

	(aCharacter = Character delete or: aCharacter = Character backspace)
		ifTrue: [ 
			self buffer ifNotEmpty: [
				self send: Character backspace asString , ' ' , Character backspace asString.
				self buffer: (self buffer copyFrom: 1 to: self buffer size - 1). ].
			^ self ].

	(TelnetCharacter from: aCharacter) isRegular
		ifTrue: [ 
			self appendInput: aCharacter.
			self print: aCharacter asString.
			^ self ].

	aCharacter == Character cr
		ifTrue: [ 
			self handleReturn.
			^ self ].

	aCharacter == Character null
		ifTrue: [ ^ self ]