evaluation
getSelectorFrom: aString
	"Answer the method selector in aString."

| whitespace selector inputStream walker lastLength| 
	whitespace := ' '.
	selector := Array new writeStream. 
	inputStream := aString readStream. 
	walker := 0.
	lastLength := 0.
	[inputStream atEnd] 
        	whileFalse: [ 
			walker even 
				ifTrue: [
                			selector nextPut: (inputStream upToAll: whitespace). ] 
				ifFalse: [
					inputStream skipTo: whitespace. 
					"Transcript show: inputStream position. Hier scheint er zu weit zu skippen" ].
			walker :=  walker + 1. ].
	"Transcript show: (selector contents)."
	^ selector 