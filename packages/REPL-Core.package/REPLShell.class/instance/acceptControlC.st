accepting
acceptControlC

	self completing
		ifTrue: [self interface print: self clearCompletion.
			^ self].

	self interface printSameLine: ''.
	self clearInput