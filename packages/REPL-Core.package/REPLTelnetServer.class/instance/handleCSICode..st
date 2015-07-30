handling
handleCSICode: aCharacter
	"Handle CSI character."

	aCharacter == $A
		ifTrue: [ 
			"self print: (#(255 34 3 10) asByteArray)."
			self historyIndex >= 1
				ifTrue: [
					self send: self class cursorUp , self lineSymbol , (self history at: self historyIndex) , self class clearLineUntilEnd.
					self buffer: (self history at: self historyIndex).
					self historyIndex: self historyIndex - 1 ] ].
	aCharacter == $B
		ifTrue: [
			"self print: (#(255 34 3 10) asByteArray)."
			(self historyIndex < (self history size - 1))
				ifTrue: [ 
					self historyIndex: self historyIndex + 1.
					self send: self class cursorUp , self lineSymbol , (self history at: (self historyIndex + 1)) , self class clearLineUntilEnd.
					self buffer: (self history at: self historyIndex) ]
				ifFalse: [
					self historyIndex: self history size.
					self send: self class cursorUp , self lineSymbol , self class clearLineUntilEnd.
					self buffer: String empty ]].
	aCharacter == $Z
		ifTrue: [ 
			self
				send:
					String lf , self class cursorUp , self class saveCursorPosition , self completeReverse , self class restoreCursorPosition.
			^ self ].

	self readMode: #regular