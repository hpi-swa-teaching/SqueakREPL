completion
completeLocalBindings: aString
	"Answers a list of suggestions for completing aString filled with results from local bindings."

	| results |
	results := OrderedCollection new.

	self workspace
		ifNotNilDo: [ :x | 
			self workspace bindings keys
				reverseDo: [ :each | 
					(each asString startsWith: aString)
						ifTrue: [ results addFirst: each ] ] ].

	^ results