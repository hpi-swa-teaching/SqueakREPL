accessing
clearInput
	"Clear input buffer."

	self buffer: ''.
	self completionIndex: 0.
	self completionSize: 0.