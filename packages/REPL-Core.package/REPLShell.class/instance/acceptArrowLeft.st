keys
acceptArrowLeft

	(self cursorPosition <= 1) ifTrue: [
		^ self.
	].

	self output: (self interface class cursorBackward).
	self cursorPosition: self cursorPosition - 1.
	self flushOutput.