testing
testShortcuts
	"Test the shortcut list."

	| result |
	result := self shortcuts shortcuts: self context.

	self assertNotNilOrEmpty: result