escape codes
cursorBackward: aNumber
	
	^self escapeCode: '[', aNumber asString, 'D'