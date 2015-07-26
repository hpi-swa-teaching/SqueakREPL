evaluating
handleCSICode: aCharacter
	"Handle CSI character."

	(aCharacter == $A) ifTrue: [
		
		"self print: (#(255 34 3 10) asByteArray)."
		(historyIndex > 1) ifTrue: [
			
			self send: (self escapeCode: '[A'), self lineSymbol, (history at: (historyIndex)), (self escapeCode: '[K').
			self buffer: (history at: (historyIndex)).
			historyIndex := historyIndex - 1.
		].
	].
	(aCharacter == $B) ifTrue: [
		
		"self print: (#(255 34 3 10) asByteArray)."
		(historyIndex < (history size)) ifTrue: [
			
			"self print: self lineSymbol."
			historyIndex := historyIndex + 1.
			self buffer: (history at: (historyIndex)). 
			self print: (history at: (historyIndex)).
		].
	].

	(aCharacter == $Z) ifTrue: [
		self send:
			String lf, (self escapeCode: '[1A'),
			(self escapeCode: '[s'),
			self completeReverse,
			(self escapeCode: '[u').
		^ self.
	].

	Transcript show: 'CSI '; show: aCharacter; cr.