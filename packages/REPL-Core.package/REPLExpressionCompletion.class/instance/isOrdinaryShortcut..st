completing
isOrdinaryShortcut: aString
	"Check whether aString possibly could become an ordinary expression shortcut and answer a truth value according to it."

	^ aString startsWith: self class classOfExpressionEvaluator characterOfOrdinaryExpressionShortcut asString