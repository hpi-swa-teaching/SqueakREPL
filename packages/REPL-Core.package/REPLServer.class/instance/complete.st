printing
complete

	| suggestions suggestionString completionTarget changeString |

	((self buffer) size = 0) ifTrue: [
		Log info: 'Not completing empty buffer.'.
		^ ''.
	].

	suggestionString := ''.

	completionTarget := (self buffer findTokens: ' ') last.

	"Remove suggested part from buffer."
	completionTarget := (completionTarget asString) copyFrom: 1 to: ((completionTarget size) - self completionSize).


	changeString := ''.
	Log info: 'Completing this term: ', completionTarget.

	"If already completing something."
	(self completing) ifTrue: [ 
		Log info: 'Already completing.'.
		"completionTarget := (completionTarget asString) copyFrom: 1 to: ((completionTarget size) - self completionSize)."
		
		"clearingText := (Character backspace) asString, ' '."

		changeString := changeString, self clearCompletion.
	].

	suggestions := self completionSuggestionsFor: completionTarget.
	
"	suggestionString := String crlf, (self escapeCode: '[2K')."
	suggestionString := suggestionString, String crlf.

	(suggestions size = 0) ifTrue: [

		suggestionString := suggestionString, 'No completions found.'.

	] ifFalse: [ | i |

		(self completing) ifTrue: [

			self completionIndex: ((self completionIndex) + self completionDirection).

			(self completionIndex <= 0) ifTrue: [
				self completionIndex: suggestions size.
			].

			(self completionIndex > ((suggestions size) - 1)) ifTrue: [
				self completionIndex: 0.
			].

			Log info: 'Completion index: ', (self completionIndex).

			self completionDirection: 1.
		] ifFalse: [
			
			Log info: 'First time completing.'.
			self completionIndex: 0.
			self completionSize: 0.
		].
			


			i := 0.
			suggestions do: [ :suggestion |

	
				(i = self completionIndex) ifTrue: [ | completionFragment |

					completionFragment := (suggestion asString allButFirst: (completionTarget size)).

					Log info: 'Inline Completion size: ', (completionTarget size).
					changeString := (self escapeCode: '[', (completionTarget size), 'D'), suggestion.
					self completionSize: completionFragment size.
					"self send: completionFragment."
					self buffer: (self buffer), completionFragment.
					
					suggestion := (self escapeCode: '[0;32m'), ' [',  suggestion, '] ', (self escapeCode: '[0m').

				] ifFalse: [
					suggestion := '  ', suggestion, '  '.
				].
				"Transcript show: self lastKey."
				suggestionString := suggestionString, '', suggestion asString.

				i := i + 1.
			].
	].
	Log info: 'Buffer after keypress: ', (self buffer).
	Log info: 'Completion size: ', self completionSize.

	suggestionString :=
		changeString,
		(self escapeCode: '[s'),


		"(self escapeCode: '[B'),
		(self escapeCode: '[A'),"
		"String crlf,	"
		"String crlf,"
		"(self escapeCode: '[A'),"
		"String crlf,"
		"(self escapeCode: '[B'),"
		suggestionString,



		(self escapeCode: '[K'),
		
		(self escapeCode: '[2B'),
		(self escapeCode: '[A'),
		(self escapeCode: '[u'),

		"(self escapeCode: '[A'),"
		"(self escapeCode: '[A'),"
		"(self escapeCode: '[A'),"
		''.


		self send:
			"String crlf, (self escapeCode: '[1A'),
			(self escapeCode: '[s'),"
			suggestionString.
		"	(self escapeCode: '[u')."