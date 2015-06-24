evaluating
acceptCurrentLine 

		| result |


		Log info: 'Evaulating: ', self buffer.


		history add: self buffer.
		historyIndex := history size.

		result := self evaluate: self buffer.

		result notNil ifTrue: [
			self 
				print: String crlf, (result), (self escapeCode: '[K').

		].

		self
			print: (String crlf, self lineSymbol);
			clearInput.