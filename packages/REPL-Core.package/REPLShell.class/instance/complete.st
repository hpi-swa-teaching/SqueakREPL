tab completion
complete
	| suggestionString completionTarget changeString formattedSuggestion |
	
	self buffer ifEmpty: [ ^self ].
	self beginCompletion.
	suggestionString := ''.
	completionTarget := (self buffer findTokens: ' ') last.	"Remove suggested part from buffer."
	completionTarget := completionTarget asString copyFrom: 1 to: completionTarget size - self completionSize.
	changeString := ''.
	"If already completing something."
	self completing
		ifTrue: [ 
			changeString := changeString , self clearCompletion ].
	self suggestions: (self completionSuggestionsFor: completionTarget).
	self suggestions isEmpty
		ifTrue: [ 
			suggestionString := suggestionString , (self class colorize: 'No completions found.' with: self class colorBad)
				, self class eraseLineUntilEnd ]
		ifFalse: [ 
			| i |
			self completing
				ifTrue: [ 
					self completionIndex: self completionIndex + self completionDirection.
					self completionIndex <= 0
						ifTrue: [ self completionIndex: suggestions size ].
					self completionIndex > (suggestions size - 1)
						ifTrue: [ self completionIndex: 0 ].
					self completionDirection: 1 ]
				ifFalse: [ 
					self completionIndex: 0.
					self completionSize: 0 ].
			i := 0.
			self suggestions
				do: [ :suggestion | 
					i = self completionIndex
						ifTrue: [ 
							| completionFragment |
							completionFragment := suggestion asString allButFirst: completionTarget size.
							changeString := (self interface class cursorBackward: completionTarget size), changeString , suggestion.
							self completionSize: completionFragment size.
							self buffer: self buffer , completionFragment.
							formattedSuggestion := self interface class colorize: ' [' , suggestion , '] ' with: '0;32' ]
						ifFalse: [ formattedSuggestion := '  ' , suggestion , '  ' ].
					suggestionString := suggestionString , '' , formattedSuggestion.
					i := i + 1 ] ].

	suggestionString := changeString , String crlf , suggestionString , String cr , self class cursorUp, (self class cursorForward: 4 + self buffer size), self class eraseLineUntilEnd.
	self print: suggestionString