evaluating
handle: aCharacter
	"Handle input character."

	(aCharacter asciiValue between: 32 and: 255) ifTrue: [ 
		self appendInput: aCharacter.
		self print: aCharacter asString 
	].

	(aCharacter == Character tab) ifTrue: [
		Transcript show: 'Tab pressed.' ; cr. ].

	(aCharacter == Character delete) ifTrue: [
		Transcript show: 'Delete pressed.'; cr. ].

	(aCharacter == Character null) ifTrue: [
		Transcript show: 'Evaluating: ', self input ; cr.
		self 
			print: String crlf;
			print: (self evaluate: self input);
			print: String crlf;
			print: self lineSymbol;
			clearInput.
	]