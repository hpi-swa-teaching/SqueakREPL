escape codes
cursorBackward: aNumber
	
	^self escape: '[', aNumber asString, 'D'