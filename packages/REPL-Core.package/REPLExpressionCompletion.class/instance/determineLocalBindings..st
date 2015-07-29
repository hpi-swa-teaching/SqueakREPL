completing
determineLocalBindings: aString
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString by using local bindings."

	^ self workspace bindings keys
		inject: OrderedCollection new
		into: [ :suggestions :eachBindingKey | 
			(eachBindingKey startsWith: aString)
				ifTrue: [ suggestions addLast: eachBindingKey ].
			suggestions ]