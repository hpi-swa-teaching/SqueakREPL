testing
testInfo
	"Test the info shortcut."

	self assertStringNotEmpty: (self shortcuts info: self context)
