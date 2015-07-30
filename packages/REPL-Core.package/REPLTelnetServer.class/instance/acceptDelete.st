keys
acceptDelete

	self buffer ifNotEmpty: [
		self send: Character backspace asString , ' ' , Character backspace asString.
		self buffer: (self buffer copyFrom: 1 to: self buffer size - 1) ]