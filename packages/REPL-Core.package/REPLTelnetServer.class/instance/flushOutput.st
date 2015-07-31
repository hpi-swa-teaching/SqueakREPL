accessing
flushOutput

	"Flush the output buffer."

	self print: self outputText.
	self outputText: ''