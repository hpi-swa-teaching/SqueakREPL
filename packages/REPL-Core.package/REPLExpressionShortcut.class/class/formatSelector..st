shortcuts
formatSelector: aString
	"Format a selector to be displayed in the shortcut list."

	^ (self isSpecialShortcutSelector: aString)
		ifTrue: [ self classOfExpressionEvaluator characterOfSpecialExpressionShortcut asString, aString allButLast ]
		ifFalse: [ self classOfExpressionEvaluator characterOfOrdinaryExpressionShortcut asString, aString ]