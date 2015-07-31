accessing
flushOutput
	"Print entire output to interface."

	self interface print: self outputBuffer.
	self clearOutputBuffer.