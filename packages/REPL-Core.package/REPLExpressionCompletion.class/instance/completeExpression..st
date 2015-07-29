completing
completeExpression: aString
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString by using ordinary common expressions."

	self optimisticModel narrowWith: aString.
	^ OrderedCollection new
		addAll:
				((self optimisticModel entries collect: [ :eachEntry | eachEntry contents asString ])
						difference: self class classOfExpressionShortcut selectors);
		addAll: (self determineLocalBindings: aString);
		yourself