evaluating
evaluateCurrentLine

	| result |
	result := self evaluate: self input.
	result
		ifNil: [ 
			self interface printNewline.
			self clearInput.
			^ self ].
	(self isRepeatableStatement: self input)
		ifTrue: [ 
			history add: self input.
			historyIndex := history size + 1].

	self interface printResult: result.
	self clearInput.