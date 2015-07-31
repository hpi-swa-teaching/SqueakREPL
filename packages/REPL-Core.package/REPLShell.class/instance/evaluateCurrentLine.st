evaluating
evaluateCurrentLine

	| result |
	result := self evaluate: self buffer.
	result
		ifNil: [ 
			self interface printNewline.
			self clearInput.
			^ self ].
	(self isRepeatableStatement: self buffer)
		ifTrue: [ 
			history add: self buffer.
			historyIndex := history size + 1].

	self interface printResult: result.
	self clearInput.