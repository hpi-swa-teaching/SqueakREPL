reading
read: aCharacter
	"Handle input character according to current read mode."

	| handles |
	handles := Dictionary
		new;
		add: #regular -> [ self handleRegular: aCharacter ];
		add: #command -> [ self handleCommand: aCharacter ];
		add: #operation -> [ self readMode: #regular ];
		add: #subCommand -> [ self handleSubCommand: aCharacter ];
		add: #escapeCode -> [ self handleEscapeCode: aCharacter ];
		add: #csiCode -> [ self handleCSICode: aCharacter ];
		yourself.
	(handles at: self readMode) value