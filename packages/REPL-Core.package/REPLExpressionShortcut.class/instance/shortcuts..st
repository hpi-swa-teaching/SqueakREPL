repl
shortcuts: aContext
	"List all available shortcuts.

Usage:
!shortcuts"

	| shortcuts result interface |
	interface := aContext userInterface.
	shortcuts := Dictionary new.

	self class selectors
		collect: [ :eachSelector |
			shortcuts
				at: (self class formatSelector: eachSelector)
				put: (self class tryGetCommentFor: eachSelector) ].
	result := String empty.
	shortcuts
		keysAndValuesDo: [ :eachKey :eachValue |
			result := result , String crlf , (interface class colorize: eachKey with: interface class colorGood).
			eachValue ifNotNil: [ result := result , String crlf , (eachValue copyReplaceAll: String cr with: String crlf) ].
			result := result , String crlf ].
	^ result
