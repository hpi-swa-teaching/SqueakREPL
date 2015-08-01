completing
isSpecialShortcut: aString
	"Check whether aString possibly could become a special expression shortcut and answer a truth value according to it."

	^ aString startsWith: self class classOfExpressionEvaluator characterOfSpecialExpressionShortcut asString