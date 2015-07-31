tab completion
completionSuggestionsFor: aString
	"Answer suggestions to complete aString."

	| suggestions |
	suggestions := self completion complete: aString.
	suggestions size > 5
		ifTrue: [ suggestions := suggestions removeFirst: 5 ].
	^ suggestions