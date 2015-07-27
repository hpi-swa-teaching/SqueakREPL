completion
format: anOModelEntry
	"Format anOModelEntry depending on it's context."

	| contents index count |
	contents := anOModelEntry contents asString.
	index := contents asString indexOf: $:.
	count := contents asString count: [ :c | c = $: ].

	(count > 1 and: (REPLShortcut new respondsTo: contents asSymbol))
		ifTrue: [ ^ '#' , (contents first: index - 1) , ' ' , (contents allButFirst: index) ].
	^ contents