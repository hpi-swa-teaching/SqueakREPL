life cycle
loop
	"Anser block to be executed repeatedly for handling reading input.
	See #startLoop."

	self socket isUnconnectedOrInvalid ifTrue: [
		self close.
		self process terminate.
		"self reopen?"
		^self
	].
	self socket waitForData.
	self read