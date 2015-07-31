tab completion
complete
	
	
	self input ifEmpty: [ ^self ].

	self isCompleting
		ifFalse: [ 
			self beginCompletion.
			self completionTarget: (self input findTokens: ' ') last.
			self suggestions: (self completionSuggestionsFor: self completionTarget ) ]
		ifTrue: [ 
			self suggestionIndex: self suggestionIndex + 1.
			self suggestionIndex > self suggestions size ifTrue: [self suggestionIndex: 1] ].

	self suggestions ifEmpty: [ 
			self abortCompletion.
			^self ].

	self interface printInline: self input, (self interface class cursorBackward: self completionTarget size), (self suggestions at: self suggestionIndex).
	self interface printCompletion: self suggestions hightlightAt: self suggestionIndex.
	