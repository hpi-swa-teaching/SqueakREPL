reading
read: aCharacter
	"Read character from client and handle according to read mode. Distinguish regular (printable) characters, escape codes and Telnet specific commands."

	| handles |
	handles := Dictionary new
		add: #regular -> [ self handleRegular: aCharacter ];
		add: #command -> [ self handleCommand: aCharacter ];
		add: #operation -> [ self readMode: #regular ];
		add: #subCommand -> [ self handleSubCommand: aCharacter ];
		add: #escapeCode -> [ self handleEscapeCode: aCharacter ];
		add: #csiCode -> [ self handleCSICode: aCharacter ];
		yourself.
	(handles at: self readMode) value