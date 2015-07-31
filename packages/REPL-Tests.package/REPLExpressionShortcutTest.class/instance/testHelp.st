testing
testHelp
	"Test the help shortcut."

	self assertStringNotEmpty: (self shortcuts help: self context)
