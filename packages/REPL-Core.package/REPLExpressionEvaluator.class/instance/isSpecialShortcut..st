evaluating
isSpecialShortcut: aString
	"Check if aString contains a special shortcut."

	^ aString matchesRegex: self class characterOfSpecialExpressionShortcut asString , '[a-zA-Z0-9_-]+'