completing
complete
	"Print suggestions to complete completion target."	

	self inputBuffer ifEmpty: [ ^self ].

	self isCompleting
		ifFalse: [ 
			self 
				beginCompletion;
				completionTarget: (self inputBuffer findTokens: ' ') last;
				suggestions: (self completionSuggestionsFor: self completionTarget ) ]
		ifTrue: [ 
			self suggestionIndex: self suggestionIndex + 1.
			(self suggestionIndex > self suggestions size) 
				ifTrue: [self suggestionIndex: 1] ].

	self suggestions ifEmpty: [ 
			self abortCompletion.
			^self ].

	self interface 
		printInline: self inputBuffer, (self interface class cursorBackward: self completionTarget size), (self suggestions at: self suggestionIndex);
		printSuggestions: self suggestions highlightedAt: self suggestionIndex.
	