escape codes
cursorForward: aNumber
	
	"Answer escape code for aNumber forward cursor movements."

	^self escape: '[', aNumber asString, 'C'