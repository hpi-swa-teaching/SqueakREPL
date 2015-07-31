repl
shortcuts: aContext
	"List all available shortcuts.

Usage:
!shortcuts"

	| shortcuts result |
	shortcuts := Dictionary new.
	self class selectors
		collect: [ :each |
			shortcuts
				at:
					((each count: [ :x | x = $: ]) = 1
						ifTrue: [ '!' , each allButLast ]
						ifFalse: [ each ])
				put: (self class tryGetCommentFor: each) ].
	result := ''.
	shortcuts
		keysAndValuesDo: [ :eachKey :eachValue |
			result := result , String crlf , (aContext userInterface class colorize: eachKey with: aContext userInterface class colorGood).
			eachValue ifNotNil: [ result := result , String crlf , (eachValue copyReplaceAll: String cr with: String crlf) ].
			result := result , String crlf ].
	^ result
