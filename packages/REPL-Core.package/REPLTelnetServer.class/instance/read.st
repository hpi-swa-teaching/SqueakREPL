reading
read
	"Read from client and handle input."

	| inputString |
	inputString := self socket receiveAvailableData.
	inputString
		do: [ :c | 
			self lastKey: c.
			self nextIsConfirmation
				ifTrue: [ self handleConfirmation: c ]
				ifFalse: [ self handle: c ] ]