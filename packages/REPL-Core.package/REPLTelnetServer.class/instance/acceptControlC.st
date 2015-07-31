keys
acceptControlC

	self completing
		ifTrue: [self print: self clearCompletion.
			^ self].
	self print: self class lineSymbol , self class eraseLineUntilEnd;
		 clearInput