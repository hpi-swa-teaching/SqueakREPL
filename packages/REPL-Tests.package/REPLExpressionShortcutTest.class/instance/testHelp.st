testing
testHelp
	"Test the help shortcut."

	self assertNotNilOrEmpty: (self shortcuts help: self context)
