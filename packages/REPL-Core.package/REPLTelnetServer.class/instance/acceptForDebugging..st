debugging
acceptForDebugging: aCharacter

	| result item from s lines interval usedButtonShortcuts uiLine |

	(aCharacter = $q)
		ifTrue: [ self endDebugging. self print: self lineSymbol. ^self ].

	self output: String crlfcrlf.
	self output: self class cursorHome.
	self output: self class eraseDown.
	"self output: (Character value: 12) asString."
	self output: self class horizontalLine.

	uiLine := '    '.
	usedButtonShortcuts := Set new.
	self debugger customButtonSpecs
		do: [ :aButtonSpec | 
			| shortcutLetter buttonBlock buttonLabel labelWithHint |
			buttonLabel := aButtonSpec first.
			buttonBlock := aButtonSpec second.
			shortcutLetter := buttonLabel first asString asLowercase.


			(usedButtonShortcuts includes: shortcutLetter)
				ifFalse: [
					labelWithHint := (self colorize: shortcutLetter asUppercase with: self class colorInfo) , (buttonLabel copyFrom: 2 to: buttonLabel size) ]
				ifTrue: [ 
					shortcutLetter := buttonLabel second asString asLowercase.
					labelWithHint := buttonLabel first asString , (self colorize: shortcutLetter with: self class colorInfo)
						, (buttonLabel copyFrom: 3 to: buttonLabel size) ].

			aCharacter == shortcutLetter asCharacter
				ifTrue: [ self debugger perform: buttonBlock ].
			uiLine := uiLine , '[ ' , labelWithHint , ' ]  '.
		 	usedButtonShortcuts add: shortcutLetter ].
	from := self debugger contextStackIndex - 2.
	from < 1
		ifTrue: [ from := 1 ].
	result := ''.
	(1 to: 10)
		do: [ :i | 
			i + from > self debugger contextStackList size
				ifTrue: [ item := '' ]
				ifFalse: [ item := self debugger contextStackList at: i + from ].
			item := item padded: #right to: REPLUserInterface width - 3 with: Character space.
			self debugger contextStackIndex == i
				ifTrue: [ result := result , '| ' , (self colorize: item with: self class colorGoodInverted) ]
				ifFalse: [ result := result , '| ' , (self colorize: item with: self class colorGood) ].
			result := result , '|' , String crlf ].

	self output: result, REPLUserInterface horizontalLine, uiLine, String crlf , self class horizontalLine.

	self debugger codeTextMorph
		ifNil: [ self output: (self colorize: 'No context.' with: self class colorBad) ]
		ifNotNil: [ 
			interval := self debugger codePaneSelectionInterval.
			s := self debugger contents string.
			lines := s copyFrom: 1 to: interval first - 1.
			self output: lines withInternetLineEndings.
			lines := s copyFrom: interval first to: interval last.
			self output: (self colorize: lines withInternetLineEndings with: self class colorGoodInverted).
			lines := s copyFrom: interval last + 1 to: s size.
			self output: (self colorize: lines withInternetLineEndings with: '0;') ].
	self output: String crlf , REPLUserInterface horizontalLine.

	self flushOutput.