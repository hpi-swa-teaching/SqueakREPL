evaluating
handle: aCharacter
	"Handle input character."

	| result |
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


	(aCharacter == Character tab) ifTrue: [
		
		self send:
			String lf, (self escapeCode: '[1A'),
			(self escapeCode: '[s'),
			self complete,
			(self escapeCode: '[u').
			"(self escapeCode: '[1A')."
		^ self.
	].

	((aCharacter == Character delete) or: (aCharacter == Character backspace)) ifTrue: [
		(self buffer size > 0) ifFalse: [
			^ self.
		].

		self send:
			(Character backspace) asString,
			' ',
			(Character backspace) asString.

		self buffer: (self buffer copyFrom: 1 to: (self buffer size) - 1).
		^ self.
	 ].

	((aCharacter asciiValue >= 32) and: (aCharacter asciiValue <= 126)) ifTrue: [ 
		self appendInput: aCharacter.
		self print: aCharacter asString.
		^ self.
	].


	(aCharacter == Character cr) ifTrue: [
		(self isExpression: self buffer) ifFalse: [
			self print: String crlf; print: self continuationSymbol.
			self appendInput: String cr.
			^self.
		].
		Transcript show: 'Evaluating: ', self buffer; cr.
		history add: self buffer.
		historyIndex := historyIndex + 1.
		result := self evaluate: self buffer.

		result notNil ifTrue: [
			self 
				print: String crlf;
				print: (result), (self escapeCode: '[K').

		].

		self
			print: (String crlf, self lineSymbol);
			clearInput.
		
		^ self.
	].

	(aCharacter == Character null) ifTrue: [
		^ self.
	].

	
	Transcript
		show: 'Unhandled: ';
		show: (aCharacter asciiValue);
		cr. 


	Transcript show: aCharacter.
	Transcript show: aCharacter asciiValue.