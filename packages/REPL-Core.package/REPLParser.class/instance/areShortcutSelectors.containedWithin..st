shortening
areShortcutSelectors: aCollection containedWithin: aString 
	"Check whether any of the shortcut selectors contained in aCollection (an instance of Collection) occurs within aString (an instance of String) and answer a truth value (an instance of Boolean) according to it. "

	| typedTokens |
	typedTokens := [(Scanner new typedScanTokens: aString) asSet]
		on: Exception
		do: [ :exception | ^ self handleShorteningException: exception ].
	aCollection do:
		[ :eachShortcutSelector |
			(typedTokens includes: eachShortcutSelector) ifTrue: [ ^ true ] ].
	^ false