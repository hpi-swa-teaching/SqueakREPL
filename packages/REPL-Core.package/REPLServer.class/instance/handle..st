evaluating
handle: aCharacter
	"Handle input character."

	(self awaitingCSICode) ifTrue: [
		self finishCSICode.
		self handleCSICode: aCharacter.
		^ self.
	].

	(self awaitingEscapeCode) ifTrue: [
		self finishEscapeCode.
		(aCharacter asciiValue == 16r5B) ifTrue: [
			self awaitCSICode.
			^ self.
		] ifFalse: [
			self handleEscapeCode: aCharacter.
			^ self.
		].
		^ self.
	].

	(aCharacter == Character escape) ifTrue: [
		self awaitEscapeCode.
		^ self.
	].

	(aCharacter asciiValue > 19) ifTrue: [ 
		self appendInput: aCharacter.
		self print: aCharacter asString.
		^ self.
	].

	(aCharacter == Character tab) ifTrue: [
		Transcript show: 'Tab pressed.' ; cr. ].

	(aCharacter == Character delete) ifTrue: [
		Transcript show: 'Backspace pressed.'; cr. ].

	(aCharacter == Character null) ifTrue: [
		Transcript show: 'Evaluating: ', self input ; cr.
		history add: self input.
		historyIndex := historyIndex + 1.
		self 
			print: String crlf;
			print: (self evaluate: self input);
			print: String crlf;
			print: self lineSymbol;
			clearInput.
	].

	
	Transcript
		show: 'Unhandled: ';
		show: (aCharacter hex);
		cr. 