evaluating
handleEscapeCode: aCharacter
	"Handle CSI character."


	Transcript show: 'ESCAPE '; show: aCharacter asInteger; cr.

	(REPLTelnet isEscapeCode: aCharacter asInteger) ifTrue: [ self awaitEscapeCode ]