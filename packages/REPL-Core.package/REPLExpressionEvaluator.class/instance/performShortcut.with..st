evaluating
performShortcut: aSymbol with: anArray
	"Perform aSymbol with anArray as arguments and validate the result."

	| shortcuts value |
	shortcuts := self class classOfExpressionShortcut new.
	value := shortcuts
				perform: aSymbol
				withArguments: anArray.

	^ (value isMemberOf: self class classOfExpressionShortcut)
		ifFalse: [ value ]
		ifTrue: [ nil ]
