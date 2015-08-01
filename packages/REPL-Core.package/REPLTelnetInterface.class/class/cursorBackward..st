escaping
cursorBackward: aNumber
	"Answer escape code for aNumber backwards cursor movements."

	^ self escape: '[' , aNumber asString , 'D'