testing
testInfo
	"Test the info shortcut."

	self assertNotNilOrEmpty: (self shortcuts info: self context)
