evaluating
evaluateCurrentLine
	"Evaluate current line and print resulting value to interface."

	| result |
	(self isRepeatableStatement: self inputBuffer)
		ifTrue: [ 
			self history add: self inputBuffer.
			self historyIndex: self history size + 1 ].
	result := self evaluate: self inputBuffer.
	result ifNil: [ self interface printNewline ] ifNotNil: [ self interface printResult: result ].
	self clearInput