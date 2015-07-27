completion
complete: aString
	"Answers a list of suggestions for completing aString."

	| results |
	(aString startsWith: '!')
		ifTrue: [ ^ self completeSpecialShortcut: aString ].

	self model narrowWith: aString.

	results := self model entries collect: [ :eachEntry | self format: eachEntry ].
	results addAll: (self completeLocalBindings: aString).
	results addAll: (self completeShortcuts: aString).

	^ results