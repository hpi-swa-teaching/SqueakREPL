keys
acceptControlC

	self completing
		ifTrue: [self print: self clearCompletion.
			^ self].
	self print: self lineSymbol , self clearLineUntilEnd;
		 clearInput