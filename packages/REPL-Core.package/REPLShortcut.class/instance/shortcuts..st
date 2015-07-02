repl
shortcuts: aContext

	| shortcuts result |
	shortcuts := Dictionary new.

	self class selectors
		collect: [ :each | shortcuts at: (((each count: [ :x | x = $: ]) = 1)
							ifTrue: [ '!', each copyFrom: 1 to: (each size) ]
							ifFalse: [ each ]) put: (self class tryGetCommentFor: each) ].

	result := ''.
	shortcuts keysAndValuesDo: [ :eachKey :eachValue | result := result, String crlf, (aContext server colorize: eachKey with: (aContext server class colorGood)).
														 eachValue ifNotNil: [ result := result, String crlf, eachValue ].
														 result := result, String crlf ].

	^result