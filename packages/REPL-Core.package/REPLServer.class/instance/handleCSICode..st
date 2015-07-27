evaluating
handleCSICode: aCharacter
	"Handle CSI character."

	aCharacter == $A
		ifTrue: [ 
			"self print: (#(255 34 3 10) asByteArray)."
			self historyIndex >= 1
				ifTrue: [
					self send: (self escapeCode: '[A') , self lineSymbol , (self history at: self historyIndex) , (self escapeCode: '[K').
					self buffer: (self history at: self historyIndex).
					self historyIndex: self historyIndex - 1 ] ].
	aCharacter == $B
		ifTrue: [
			"self print: (#(255 34 3 10) asByteArray)."
			(self historyIndex < (self history size - 1))
				ifTrue: [ 
					self historyIndex: self historyIndex + 1.
					self send: (self escapeCode: '[A') , self lineSymbol , (self history at: (self historyIndex + 1)) , (self escapeCode: '[K').
					self buffer: (self history at: self historyIndex) ]
				ifFalse: [
					self historyIndex: self history size.
					self send: (self escapeCode: '[A') , self lineSymbol , (self escapeCode: '[K').
					self buffer: String empty ]].
	aCharacter == $Z
		ifTrue: [ 
			self
				send:
					String lf , (self escapeCode: '[1A') , (self escapeCode: '[s') , self completeReverse , (self escapeCode: '[u').
			^ self ].
	Transcript
		show: 'CSI ';
		show: aCharacter;
		cr