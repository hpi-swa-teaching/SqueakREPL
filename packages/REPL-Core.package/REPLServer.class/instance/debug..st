accessing
debug: aCharacter
	| result item from s lines interval known ui |
	"buttons := ((self debugger submorphs at: 3) submorphs at: 1) submorphs.
	text := ((self debugger submorphs at: 3) submorphs at: 2) textMorph text.
	list := (((self debugger submorphs at: 2)) submorphs at: 1) submorphs first."
	self output: String crlf.	"buttons do: [ :b | sendString := sendString, ' [', b label, '] '. ]."	"result := (self colorize: 'asd' with: self class colorGood), (String crlf)."	"result := result, asString."	"(text asString) linesDo: [ :line |
		result := result, line, String crlf.
	]."
	self output: (self escapeCode: '[H').
	self output: (self escapeCode: '[J').
	self output: (Character value: 12) asString.
	ui := '    '.
	self output: REPLInterface horizontalLine.
	known := Bag new.
	self debugger customButtonSpecs
		do: [ :b | 
			| command label key newLabel |
			label := b first.
			command := b second.
			key := label first asString asLowercase.
			(known includes: key)
				ifTrue: [ 
					key := label second asString asLowercase.
					newLabel := label first asString , (self colorize: key with: self class colorInfo)
						, (label copyFrom: 3 to: label size) ]
				ifFalse: [ newLabel := (self colorize: key asUppercase with: self class colorInfo) , (label copyFrom: 2 to: label size) ].
			aCharacter == key asCharacter
				ifTrue: [ self debugger perform: command ].
			ui := ui , '[ ' , newLabel , ' ]  '.
			known add: key ].
	from := self debugger contextStackIndex - 2.
	from < 1
		ifTrue: [ from := 1 ].
	result := ''.
	(1 to: 10)
		do: [ :i | 
			i + from > self debugger contextStackList size
				ifTrue: [ item := '' ]
				ifFalse: [ item := self debugger contextStackList at: i + from ].
			item := item padded: #right to: REPLInterface width - 3 with: Character space.
			self debugger contextStackIndex == i
				ifTrue: [ result := result , '| ' , (self colorize: item with: '0;30;42') ]
				ifFalse: [ result := result , '| ' , (self colorize: item with: '0;32') ].
			result := result , '|' , String crlf ].
	self output: result.
	self output: REPLInterface horizontalLine.
	self output: ui.
	self output: String crlf , REPLInterface horizontalLine.
	self debugger codeTextMorph
		ifNil: [ self output: (self colorize: 'No context.' with: self class colorBad) ]
		ifNotNil: [ 
			interval := self debugger codePaneSelectionInterval.
			s := self debugger contents string.
			lines := s copyFrom: 1 to: interval first - 1.
			self output: lines withInternetLineEndings.
			lines := s copyFrom: interval first to: interval last.
			self output: (self colorize: lines withInternetLineEndings with: '0;30;42').
			lines := s copyFrom: interval last + 1 to: s size.
			self output: (self colorize: lines withInternetLineEndings with: '0;') ].
	self output: String crlf , REPLInterface horizontalLine.
	self flushOutput