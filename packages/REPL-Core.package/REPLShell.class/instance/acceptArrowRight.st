keys
acceptArrowRight

	(self cursorPosition >= (self inputBuffer size + 1)) ifTrue: [
		^ self.
	].

	self output: (self interface class cursorForward).
	self cursorPosition: self cursorPosition + 1.
	self flushOutput.