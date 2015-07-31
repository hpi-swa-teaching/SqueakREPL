shortcuts
formatSelector: aString
	"Format a selector to be displayed in the shortcut list."

	^ (self isSpecialShortcutSelector: aString)
		ifTrue: [ self replEvaluatorClass characterOfSpecialExpressionShortcut asString, aString allButLast ]
		ifFalse: [ self replEvaluatorClass characterOfOrdinaryExpressionShortcut asString, aString ]