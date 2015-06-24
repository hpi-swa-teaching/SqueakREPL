evaluating
acceptCurrentLine 

		| result |


		Log info: 'Evaulating: ', self buffer.

		"self send: (self escapeCode: '[J')."
 
		(self buffer size = 0) ifFalse: [
			history add: self buffer.
			historyIndex := history size.
		].

		result := self evaluate: self buffer.

		self 
			print: String crlf, (result), (self escapeCode: '[K'),
			self lineSymbol;
			clearInput.