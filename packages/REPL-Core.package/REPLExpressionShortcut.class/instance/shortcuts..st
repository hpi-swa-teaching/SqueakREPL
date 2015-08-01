repl
shortcuts: aContext
	"List all available shortcuts.

Usage:
!shortcuts"

	| shortcuts interface |
	interface := aContext userInterface.
	shortcuts := Dictionary new.
	^ self class selectors
		inject: String empty
		into: [ :result :eachSelector | 
			result , String crlf
				, (interface class colorize: (self class formatSelector: eachSelector) with: interface class colorGood)
				, String crlf , ((self class tryGetCommentFor: eachSelector) copyReplaceAll: String cr with: String crlf)
				, String crlf ]