escape codes
cursorForward: aNumber
	
	^self escape: '[', aNumber asString, 'C'