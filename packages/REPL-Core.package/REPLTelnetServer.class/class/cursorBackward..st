escape codes
cursorBackward: aNumber
	
	^self escapeCode: '[', self aNumber asString, 'D'