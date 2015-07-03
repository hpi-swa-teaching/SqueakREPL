completion
format: anOModelEntry
	| contents index |
	contents := anOModelEntry contents asString.
	index := contents asString indexOf: $:.
	(index = 3 and: (REPLShortcut new respondsTo: contents asSymbol))
		ifTrue: [ ^ '#' , (contents copyFrom: 1 to: index - 1) , ' ' , (contents copyFrom: index + 1 to: contents size) ].
	^ contents