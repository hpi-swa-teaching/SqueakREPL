accessing
appendInput: aString
	"Append aString to input buffer."

	| textAfterCursor textBeforeCursor |
	textBeforeCursor := (self inputBuffer copyFrom: 1 to: self cursorPosition - 1).
	textAfterCursor := (self inputBuffer copyFrom: self cursorPosition to: self inputBuffer size).


	self cursorPosition: self cursorPosition + 1.


	self inputBuffer: textBeforeCursor, aString, textAfterCursor.

	self output: aString, textAfterCursor.


		(textAfterCursor size > 0) ifTrue: [
			self output:  (self interface class cursorBackward: (textAfterCursor size)). ].

	self flushOutput.
