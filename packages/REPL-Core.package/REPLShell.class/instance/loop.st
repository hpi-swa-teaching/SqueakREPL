life cycle
loop
	"Anser block to be executed repeatedly for handling reading input.
	See #startLoop."

	self socket isUnconnectedOrInvalid
		ifTrue: [
			self close.
			^ self]
		ifFalse: [
			self socket waitForData.
			self socket receiveAvailableData do: [ :char | self read: char ]]