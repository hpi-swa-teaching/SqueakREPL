evaluating
handleCSICode: aCharacter
	"Handle CSI character."

	(aCharacter == $A) ifTrue: [
		
		"self print: (#(255 34 3 10) asByteArray)."
		(historyIndex > 1) ifTrue: [
			
			self print: String cr, '                     ', String cr, self lineSymbol.
			historyIndex := historyIndex - 1.
			self input: (history at: (historyIndex)). 
			self print: (history at: (historyIndex)).
		].
	].
	(aCharacter == $B) ifTrue: [
		
		"self print: (#(255 34 3 10) asByteArray)."
		(historyIndex < (history size)) ifTrue: [
			
			self print: String cr, '                     ', String cr, self lineSymbol.
			historyIndex := historyIndex + 1.
			self input: (history at: (historyIndex)). 
			self print: (history at: (historyIndex)).
		].
	].

	Transcript show: 'CSI '; show: aCharacter; cr.