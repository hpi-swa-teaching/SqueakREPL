accepting
acceptArrowLeft
	"Accept arrow left key."

	self cursorPosition <= 1
		ifTrue: [ ^ self ].
	self
		appendOutput: self interface class cursorBackward;
		cursorPosition: self cursorPosition - 1;
		flushOutput