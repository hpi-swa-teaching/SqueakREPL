keys
acceptDelete

	| textAfterCursor textBeforeCursor |
	(self cursorPosition <= 1) ifTrue: [
		^ self.
	].
		self output: Character backspace asString.
		self cursorPosition: self cursorPosition - 1.
		textBeforeCursor := (self buffer copyFrom: 1 to: self cursorPosition - 1).
		textAfterCursor := (self buffer copyFrom: self cursorPosition + 1 to: self buffer size).
		self buffer: textBeforeCursor, textAfterCursor. 

		self output: (self interface class eraseLineUntilEnd), textAfterCursor.

		(textAfterCursor size > 0) ifTrue: [
			self output:  (self interface class cursorBackward: (textAfterCursor size)). ].

		self flushOutput.
