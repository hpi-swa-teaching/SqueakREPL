keys
acceptDelete

	self buffer ifNotEmpty: [
		self interface printBackspace.
		self buffer: (self buffer copyFrom: 1 to: self buffer size - 1) ]