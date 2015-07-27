completion
completeShortcuts: aString
	"Answers a list of suggestions for completing aString filled with results from repl shortcuts."

	| results |
	results := OrderedCollection new.

	(REPLShortcut selectors select: [ :each | (each count: [ :x | x = $: ]) = 1 ])
		do: [ :each | 
			(each asString startsWith: aString)
				ifTrue: [ results addFirst: each allButLast ] ].


	^ results