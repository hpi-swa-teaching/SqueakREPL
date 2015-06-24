evaluating
handle: aCharacter
	"Handle input character."



	(aCharacter asciiValue == 255) ifTrue: [
		self awaitTelnetCommand.
		Log info: 'TELNET: IAC'.
		^ self.
	].

	(self awaitingTelnetCommand) ifTrue: [

		(aCharacter asciiValue == REPLTelnet SB) ifTrue: [
			self awaitTelnetSubOption.
			Log info: 'TELNET: SB'.
			^ self.
		].

		(aCharacter asciiValue == REPLTelnet SE) ifTrue: [
			self finishTelnetSubOption.
			self finishTelnetCommand.
			Log info: 'TELNET: SE'.
			^ self.
		].

		Log info: 'TELNET: (operation) ', aCharacter asciiValue.
		self awaitTelnetOperation.
		self finishTelnetCommand.
		^ self.

	].

	(self awaitingTelnetOperation) ifTrue: [

		Log info: 'TELNET: (operation payload) ', aCharacter asciiValue.
		self finishTelnetOperation.
		^ self.

	].

	(self awaitingTelnetSubOption) ifTrue: [
		Log info: 'TELNET: (SE payload) ', aCharacter asciiValue.
		^ self.
	].

	Log info: aCharacter asciiValue.


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


	((aCharacter == Character escape)) ifTrue: [
		self awaitEscapeCode.
		^ self.
	].


	(aCharacter == Character tab) ifTrue: [
		
		self buffer size == 0 ifTrue: [
			^ self.
		].

		self complete.
			"(self escapeCode: '[1A')."

		completing := true.

		^ self.
	] ifFalse: [
		completing := false.
	].

	(self completing) ifTrue: [
		self send: (self escapeCode: '[J').
		"self completionSize: 0."
		self clearCompletion.
	].

	(aCharacter asciiValue == 3) ifTrue: [

		(self completing) ifTrue: [
			self print: self clearCompletion.
			^ self.
		].
		self
			print: self lineSymbol, (self clearLineUntilEnd);
			clearInput.
		
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
			self appendInput: String crlf.
			^self.
		].
		self acceptCurrentLine.
		
		^ self.
	].

	(aCharacter == Character null) ifTrue: [
		^ self.
	].

	
	Transcript
		show: 'Unhandled: ';
		show: (aCharacter asciiValue);
		cr. 