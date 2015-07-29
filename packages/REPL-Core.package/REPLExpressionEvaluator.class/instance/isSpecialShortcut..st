evaluation
isSpecialShortcut: aString
	"Check if aString contains a special shortcut."

	^aString matchesRegex: '![a-z0-9_-]+'