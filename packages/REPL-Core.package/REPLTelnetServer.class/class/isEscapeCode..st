interpreting
isEscapeCode: aCharacter
	"Answer if character is to be treated as escape code."

	^ 250 < aCharacter asciiValue 