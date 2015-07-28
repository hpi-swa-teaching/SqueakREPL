life cycle
loop
	"Anser block to be executed repeatedly for handling reading input.
	See #startLoop."

	(self == REPLStarter interface) ifFalse: [
		self halt ].

	self socket isUnconnectedOrInvalid ifTrue: [
		"self halt."
		self close.
		^self
	].
	self socket waitForData.
	self read