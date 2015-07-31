interpreting
isRegular: aCharacter 
	"Answer if aCharacter should be printed."

	^ aCharacter asciiValue between: 32 and: 126