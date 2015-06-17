evaluating
handleEscapeCode: aCharacter
	"Handle CSI character."


	Transcript show: 'ESCAPE '; show: aCharacter; cr.