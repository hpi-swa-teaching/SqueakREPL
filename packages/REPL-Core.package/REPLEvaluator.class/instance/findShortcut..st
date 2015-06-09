evaluation
findShortcut: aString
	"Parses the code in aString to find a REPLShortcut."

	| shortcuts selectors inputStream temp |
	shortcuts := (REPLShortcut selectors).
	selectors := OrderedCollection new.
	inputStream := aString readStream. 
	[inputStream atEnd] 
        	whileFalse: [ 
			temp := self getSelectorFrom: (inputStream upTo: '.').
			((temp isNil not) and: (shortcuts includes: temp)) 
				ifTrue: [
					selectors add: temp. ].
			temp := nil. ] .
			
	^ selectors
	

