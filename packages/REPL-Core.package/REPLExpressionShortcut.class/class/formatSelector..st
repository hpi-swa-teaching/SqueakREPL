shortcuts
formatSelector: aString
	"Format a selector to be displayed in the shortcut list."

	^ (self isSpecialShortcutSelector: aString)
		ifTrue: [ REPLExpressionEvaluator characterOfSpecialExpressionShortcut asString, aString allButLast ]
		ifFalse: [ REPLExpressionEvaluator characterOfOrdinaryExpressionShortcut asString, aString ]