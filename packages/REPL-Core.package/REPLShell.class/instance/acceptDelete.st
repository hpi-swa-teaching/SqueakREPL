keys
acceptDelete

	self input ifNotEmpty: [
		self input: (self input copyFrom: 1 to: self input size - 1).
		self interface printBackspace ]