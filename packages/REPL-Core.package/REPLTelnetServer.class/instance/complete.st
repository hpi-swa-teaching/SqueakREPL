printing
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
	suggestions := self completionSuggestionsFor: completionTarget.	
	suggestions size = 0
		ifTrue: [ 
			suggestionString := suggestionString , (self colorize: 'No completions found.' with: self class colorBad)
				, self clearLineUntilEnd ]
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
			suggestions
				do: [ :suggestion | 
					i = self completionIndex
						ifTrue: [ 
							| completionFragment |
							completionFragment := suggestion asString allButFirst: completionTarget size.
							changeString := (self escapeCode: '[' , completionTarget size , 'D') , changeString , suggestion.
							self completionSize: completionFragment size.
							self buffer: self buffer , completionFragment.
							formattedSuggestion := self colorize: ' [' , suggestion , '] ' with: '0;32' ]
						ifFalse: [ formattedSuggestion := '  ' , suggestion , '  ' ].
					suggestionString := suggestionString , '' , formattedSuggestion.
					i := i + 1 ] ].

	suggestionString := changeString , String crlf , suggestionString , String cr , (self escapeCode: '[A')
		, (self escapeCode: '[' , (4 + self buffer size) , 'C') , (self escapeCode: '[K') , ''.
	self send: suggestionString