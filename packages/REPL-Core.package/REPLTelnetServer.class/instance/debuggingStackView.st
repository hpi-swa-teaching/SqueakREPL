debugging
debuggingStackView

      | stackView startIndex stackItem |	
	startIndex := self debugger contextStackIndex - 2.

	startIndex < 1
		ifTrue: [ startIndex := 1 ].

	stackView := ''.

	(1 to: 10)
		do: [ :anIndex |
			| itemColor |

			anIndex + startIndex > self debugger contextStackList size
				ifTrue: [ stackItem := '' ]
				ifFalse: [ stackItem := self debugger contextStackList at: anIndex + startIndex ].

			stackItem := stackItem padded: #right to: self class width - 3 with: Character space.

			self debugger contextStackIndex == anIndex
				ifTrue: [ itemColor := self class colorGoodInverted ]
				ifFalse: [ itemColor := self class colorGood ].

			stackView := stackView , '| ' , (self class colorize: stackItem with: itemColor).
			stackView := stackView , '|' , String crlf ].

	^ stackView