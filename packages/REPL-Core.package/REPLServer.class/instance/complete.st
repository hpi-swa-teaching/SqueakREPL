printing
complete

	| suggestions suggestionString completionTarget |

	((self buffer) size = 0) ifTrue: [
		^ self.
	].

	completionTarget := (self buffer findTokens: ' ') last.

	((self completionSize = 0) and: [self lastKey ~= Character tab ]) ifFalse: [
		completionTarget := (completionTarget asString) copyFrom: 1 to: ((completionTarget size) - self completionSize).
		self completionSize timesRepeat: [
			self send:
			(Character backspace) asString,
				' ',
			(Character backspace) asString.
		].
		self buffer: ((self buffer) copyFrom: 1 to: ((self buffer size) - completionSize)).
	].

	suggestions := self completion complete: (completionTarget).
	

	(suggestions size > 5) ifTrue: [
		suggestions := suggestions removeFirst: 5.
	].

	suggestionString := String crlf, (self escapeCode: '[2K').

	(suggestions size = 0) ifTrue: [

		suggestionString := suggestionString, 'No completions found.'.

	] ifFalse: [ | i |

		(self lastKey = Character tab or: [self completionDirection = (-1)]) ifTrue: [

			self completionIndex: ((self completionIndex) + self completionDirection).

			(self completionIndex <= 0) ifTrue: [
				self completionIndex: suggestions size.
			].

			(self completionIndex > ((suggestions size) - 1)) ifTrue: [
				self completionIndex: 0.
			].



			self completionDirection: 1.
		] ifFalse: [
			self completionIndex: 0.
			self completionSize: 0.
		].

			Transcript show: self completionIndex.
			
			Transcript show: suggestions.

			i := 0.
			suggestions do: [ :suggestion |

	
				(i = self completionIndex) ifTrue: [ | completionFragment |
					Transcript show: '|',(suggestion asString allButFirst: (completionTarget size)), '|'.

					completionFragment := (suggestion asString allButFirst: (completionTarget size)).
					self completionSize: completionFragment size.
					self send: completionFragment.
					self buffer: (self buffer), completionFragment.
					
					suggestion := ' [', suggestion, '] '.

				] ifFalse: [
					suggestion := '  ', suggestion, '  '.
				].
				Transcript show: self lastKey.
				suggestionString := suggestionString, '', suggestion asString.

				i := i + 1.
			].
	].

	^ suggestionString.
