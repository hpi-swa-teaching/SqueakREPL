completion
completeSpecialShortcut: aString
	"Answers a list of suggestions for completing aString."

	| selector shortcuts |

	shortcuts := (REPLShortcuts selectors select: [ :each | (each count: [ :x | x = $: ]) = 1]).

	(aString size > 1)
		ifTrue: [ selector := aString copyFrom: 2 to: (aString size).
				shortcuts := shortcuts select: [ :each | each startsWith: selector ] ].

	^(shortcuts collect: [ :each | '!', (each copyFrom: 1 to: (each size - 1)) ]) asOrderedCollection 