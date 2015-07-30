escape codes
cursorForward: aNumber
	
	^self escapeCode: '[', aNumber asString, 'C'