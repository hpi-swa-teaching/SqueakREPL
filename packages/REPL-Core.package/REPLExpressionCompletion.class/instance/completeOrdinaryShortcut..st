completing
completeOrdinaryShortcut: aString
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString by using ordinary shortcuts."

	| selectors suggestions |
	selectors := self class classOfExpressionShortcut selectors
		select: [ :eachSelector | ((eachSelector occurrencesOf: $:) > 1) and: [ eachSelector startsWith: aString allButFirst ] ].
	suggestions := selectors
		collect: [ :eachSelector | 
			self class classOfExpressionEvaluator characterOfOrdinaryExpressionShortcut asString, eachSelector
				copyWithoutIndex: (eachSelector indexOf: $:) ].
	^ suggestions