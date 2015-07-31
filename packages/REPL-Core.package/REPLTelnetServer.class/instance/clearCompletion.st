tab completion
clearCompletion
	| clearingText |

	clearingText := ''.	
	clearingText := clearingText. 

	(self completionSize == 0 and: [ self completing ])
		ifTrue: [ ^ self ].
	clearingText := clearingText , (self class cursorBackward: self completionSize), (self class eraseLineUntilEnd).

	self buffer: (self buffer copyFrom: 1 to: self buffer size - self completionSize).
	self completionSize: 0.
	^ clearingText