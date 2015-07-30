formatting
formatError
	"Format the most recent error."

	self lastErrorPosition >= self lastErrorStatement size
		ifTrue: [ ^ self lastErrorStatement , self lastErrorMessage ].

	^ (self lastErrorStatement copyFrom: 1 to: self lastErrorPosition - 1) , ' ' , lastErrorMessage
		, (self lastErrorStatement copyFrom: self lastErrorPosition to: self lastErrorStatement size)