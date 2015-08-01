debugging
debuggingStackView
	"Answer textual representation of the debugger's stack view."

      | stackView startIndex stackItem interfaceClass |	
	interfaceClass := self interface class.
	startIndex := self debugger contextStackIndex - 2.
	startIndex < 1 ifTrue: [ startIndex := 1 ].

	stackView := ''.
	(1 to: self class maximumNumberOfLines)
		do: [ :eachIndex |
			| itemColor |
			
			stackItem := (eachIndex + startIndex > self debugger contextStackList size)
				ifTrue: [ String empty ]
				ifFalse: [ self debugger contextStackList at: eachIndex + startIndex ].

			stackItem := stackItem padded: #right to: self interface class width - 3 with: Character space.

			itemColor := (self debugger contextStackIndex = eachIndex)
				ifTrue: [ interfaceClass colorGoodInverted ]
				ifFalse: [ interfaceClass colorGood ].

			stackView := stackView , '| ' , (interfaceClass colorize: stackItem with: itemColor) , '|' , String crlf ].

	^ stackView