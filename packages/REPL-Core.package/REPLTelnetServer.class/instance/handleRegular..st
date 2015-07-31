handling
handleRegular: aCharacter
	"Handle aCharacter as regular character."
	
	| regularCharacterHandles |
	regularCharacterHandles := Dictionary new
		add: self class IAC	->[ self readMode: #command ];
		add: Character escape 	->[ self readMode: #escapeCode ];
		add: Character tab->[ self shell acceptTab ];
		add: (Character value: 3)->[ self shell acceptControlC ];
		add: Character delete->[ self shell acceptDelete ];
		add: Character backspace->[ self shell acceptDelete ];
		add: Character cr->[ self shell acceptReturn ];
		yourself.
		
	(regularCharacterHandles 
		at: aCharacter 
		ifAbsent: []) value.

	(self class isRegular: aCharacter)
		ifTrue: [ self shell acceptRegular: aCharacter ].
