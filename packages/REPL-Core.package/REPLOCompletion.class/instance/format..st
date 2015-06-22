completion
format: anOModelEntry

	| contents |
	contents := anOModelEntry contents asString.

	(REPLShortcut new respondsTo: contents asSymbol) ifTrue: [ | index |
		index := contents asString indexOf: $:.
		^ '#', (contents copyFrom: 1 to: index - 1), ' ', (contents copyFrom: index+1 to: contents size) ].

	^contents