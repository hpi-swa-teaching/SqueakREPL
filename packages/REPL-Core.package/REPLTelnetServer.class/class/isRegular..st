telnet codes
isRegular: aCharacter 
	"Answer if character can be printed."

	^ aCharacter asciiValue between: 32 and: 126