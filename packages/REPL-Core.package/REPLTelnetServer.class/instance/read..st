reading
read: aCharacter
	"Handle input character."

	| handles |
	handles := Dictionary new.
	handles
		add: #regular->[ self handleRegular: aCharacter ];
		add: #command->[ self handleCommand: aCharacter ];
		add: #operation->[ self readMode: #regular ];
		add: #subCommand->[ self handleSubCommand: aCharacter ];
		add: #escapeCode->[self handleEscapeCode: aCharacter ];
		add: #csiCode->[self handleCSICode: aCharacter].

	(handles at: self readMode) value.

	self debugging
		ifTrue: [
			self debug: aCharacter.
			^ self ].

	self completing
		ifTrue: [
			self send: self class eraseDown.
			self clearCompletion "???" ].

	"self print: 'Char: ', aCharacter asciiValue, '        Mode: ', self readMode asString,  String crlf."

	