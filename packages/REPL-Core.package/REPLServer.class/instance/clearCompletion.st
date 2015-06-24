printing
clearCompletion


		| clearingText |


		clearingText := ''.

		"self completionSize timesRepeat: [
			clearingText := clearingText, (Character backspace) asString.
		]."
		self send: (self escapeCode: '[J').

		Log info: 'Clearing completion chars: ', (self completionSize).

		(self completionSize == 0) ifTrue: [
			^ self.
		].
		self send: (self escapeCode: '[', ((self completionSize) asString),'D'), (self escapeCode: '[K').


		"Remove latest completion value from buffer."
		self buffer: ((self buffer) copyFrom: 1 to: ((self buffer size) - self completionSize)).

		self completionSize: 0.