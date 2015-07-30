completing
completeExpression: aString
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString by using ordinary common expressions."

	| optimisticSuggestions localBindings |
	self optimisticModel narrowWith: aString.
	optimisticSuggestions := (self optimisticModel entries collect: [ :eachEntry | eachEntry contents asString ])
		difference: self class classOfExpressionShortcut selectors.
	localBindings := self determineLocalBindings: aString.
	^ OrderedCollection new
		addAll: localBindings;
		addAll: optimisticSuggestions;
		yourself