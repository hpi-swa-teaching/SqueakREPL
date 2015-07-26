completion
complete: aString
	"Answers a list of suggestions for completing aString."

	| results |
	(aString startsWith: '!')
		ifTrue: [ ^ self completeSpecialShortcut: aString ].
	self model narrowWith: aString.
	results := self model entries collect: [ :eachEntry | self format: eachEntry ].
	self workspace
		ifNotNilDo: [ :x | 
			self workspace bindings keys
				reverseDo: [ :each | 
					(each asString startsWith: aString)
						ifTrue: [ results addFirst: each ] ] ].
	(REPLShortcut selectors select: [ :each | (each count: [ :x | x = $: ]) = 1 ])
		do: [ :each | 
			(each asString startsWith: aString)
				ifTrue: [ results addFirst: (each copyFrom: 1 to: each size) ] ].
	^ results