evaluating
evaluateCurrentLine

	| result |
	result := self evaluate: self inputBuffer.
	result
		ifNil: [ 
			self interface printNewline.
			self clearInput.
			^ self ].
	(self isRepeatableStatement: self inputBuffer)
		ifTrue: [ 
			history add: self inputBuffer.
			historyIndex := history size + 1].

	self interface printResult: result.
	self clearInput.