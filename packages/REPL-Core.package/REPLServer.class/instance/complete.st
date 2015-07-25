printing
complete
	| suggestionString completionTarget changeString formattedSuggestion |
	self buffer size = 0
		ifTrue: [ 
			Log info: 'Not completing empty buffer.'.
			^ '' ].
	suggestionString := ''.
	completionTarget := (self buffer findTokens: ' ') last.	"Remove suggested part from buffer."
	completionTarget := completionTarget asString copyFrom: 1 to: completionTarget size - self completionSize.
	changeString := ''.
	Log info: 'Completing this term: ' , completionTarget.	"If already completing something."
	self completing
		ifTrue: [ 
			Log info: 'Already completing.'.	"completionTarget := (completionTarget asString) copyFrom: 1 to: ((completionTarget size) - self completionSize)."	"clearingText := (Character backspace) asString, ' '."
			changeString := changeString , self clearCompletion ].
	suggestions := self completionSuggestionsFor: completionTarget.	"	suggestionString := String crlf, (self escapeCode: '[2K')."	"suggestionString := suggestionString, String crlf."
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
					Log info: 'Completion index: ' , self completionIndex.
					self completionDirection: 1 ]
				ifFalse: [ 
					Log info: 'First time completing.'.
					self completionIndex: 0.
					self completionSize: 0 ].
			i := 0.
			suggestions
				do: [ :suggestion | 
					i = self completionIndex
						ifTrue: [ 
							| completionFragment |
							completionFragment := suggestion asString allButFirst: completionTarget size.
							Log info: 'Inline Completion size: ' , completionTarget size.
							changeString := (self escapeCode: '[' , completionTarget size , 'D') , changeString , suggestion.
							self completionSize: completionFragment size.	"self send: completionFragment."
							self buffer: self buffer , completionFragment.
							formattedSuggestion := self colorize: ' [' , suggestion , '] ' with: '0;32' ]
						ifFalse: [ formattedSuggestion := '  ' , suggestion , '  ' ].	"Transcript show: self lastKey."
					suggestionString := suggestionString , '' , formattedSuggestion.
					i := i + 1 ] ].
	Log info: 'Suggestions:: ' , self completionSize.
	Log info: 'Buffer after keypress: ' , self buffer.
	Log info: 'Completion size: ' , self completionSize.
	suggestionString := changeString , String crlf , suggestionString , String cr , (self escapeCode: '[A')
		, (self escapeCode: '[' , (4 + self buffer size) , 'C') , (self escapeCode: '[K') , ''.
	Log info: suggestionString.
	self send: suggestionString	"String crlf, (self escapeCode: '[1A'),
			(self escapeCode: '[s'),"	"	(self escapeCode: '[u')."