shortening
areShortcutSelectors: aCollection containedWithin: aString
	"Check whether any of the shortcut selectors contained in aCollection occurs within the expression aString and answer a truth value according to it."

	| typedTokens |
	typedTokens := [ (Scanner new typedScanTokens: aString) asSet ]
		on: Exception
		do: [ :exception | ^ self handleShorteningException: exception ].
	aCollection
		do: [ :eachShortcutSelector | 
			(typedTokens includes: eachShortcutSelector)
				ifTrue: [ ^ true ] ].
	^ false