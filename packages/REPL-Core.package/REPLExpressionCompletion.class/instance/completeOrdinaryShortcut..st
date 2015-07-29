completing
completeOrdinaryShortcut: aString 
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString by using ordinary expression shortcuts. "

	| selectors suggestions |
	selectors := self class classOfExpressionShortcut selectors
				select: [:eachSelector | (eachSelector occurrencesOf: $:) > 1 and: [eachSelector startsWith: aString allButFirst]].
	suggestions := selectors
				collect: [:eachSelector | 
					| indexOfSeparator |
					indexOfSeparator := eachSelector indexOf: $:.
					self class classOfExpressionEvaluator characterOfOrdinaryExpressionShortcut asString , (eachSelector
						copyReplaceFrom: indexOfSeparator
						to: indexOfSeparator
						with: ' ')].
	^ suggestions