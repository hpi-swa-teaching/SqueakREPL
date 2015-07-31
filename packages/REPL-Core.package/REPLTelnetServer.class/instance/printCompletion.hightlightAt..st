printing
printCompletion: anOrderedCollection hightlightAt: anInteger
	"Print completion suggestions and highlight suggestion at anInteger."

	| collectionCopy |
	self print: 
		String crlf, 
		self class eraseLineUntilEnd.
	
	collectionCopy := anOrderedCollection copy.
	collectionCopy at: anInteger put: '[', (anOrderedCollection at: anInteger), ']'.

	collectionCopy do: [ :suggestion |
		self print: suggestion, ' '
	].

	self print:
		Character cr asString,
		self class cursorUp,
		(self class cursorForward: 4)