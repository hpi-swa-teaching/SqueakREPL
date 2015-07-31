keys
acceptArrowRight
	"Accept arrow right key."

	self cursorPosition >= (self inputBuffer size + 1) ifTrue: [ 	^self ].

	self 
		appendOutput: (self interface class cursorForward);
		cursorPosition: self cursorPosition + 1;
		flushOutput.