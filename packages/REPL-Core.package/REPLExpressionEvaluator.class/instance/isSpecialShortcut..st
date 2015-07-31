evaluation
isSpecialShortcut: aString
	"Check if aString contains a special shortcut."

	^ aString matchesRegex: '![a-zA-Z0-9_-]+'