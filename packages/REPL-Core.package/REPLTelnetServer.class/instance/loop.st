initializing
loop
	"Anser block to be executed repeatedly for handling reading input."

	self socket isUnconnectedOrInvalid
		ifTrue: [self close]
		ifFalse: [self socket waitForData.
			self socket receiveAvailableData
				do: [:eachCharacter | self read: eachCharacter]]