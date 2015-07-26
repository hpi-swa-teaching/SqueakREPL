evaluation
getSelectorFrom: aString 
	"Answer the method selector in aString."
	| whitespace selector inputStream walker trash |
	whitespace := ' '.
	selector := Array new writeStream.
	trash := Array new writeStream.
	inputStream := aString readStream.
	walker := 0.
	[inputStream atEnd]
		whileFalse: [walker even
				ifTrue: [selector
						nextPut: (inputStream upToAll: whitespace)]
				ifFalse: [trash
						nextPut: (inputStream upToAll: whitespace)].
			walker := walker + 1].
	^ selector contents