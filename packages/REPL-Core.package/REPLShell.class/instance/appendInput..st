accessing
appendInput: aString
	"Append aString to input buffer."



	| textAfterCursor textBeforeCursor |
	textBeforeCursor := (self buffer copyFrom: 1 to: self cursorPosition - 1).
	textAfterCursor := (self buffer copyFrom: self cursorPosition to: self buffer size).


	self cursorPosition: self cursorPosition + 1.


	self buffer: textBeforeCursor, aString, textAfterCursor.

	self output: aString, textAfterCursor.


		(textAfterCursor size > 0) ifTrue: [
			self output:  (self interface class cursorBackward: (textAfterCursor size)). ].

	self flushOutput.
