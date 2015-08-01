correcting
correctVariable: proposedVariable interval: spot
	"Determine a known variable identifier for the suggested descriptor proposedVariable."

	(encoder classEncoding instVarNames includes: proposedVariable)
		ifTrue: [ 
			^ InstanceVariableNode new
				name: proposedVariable
				index: (encoder classEncoding allInstVarNames indexOf: proposedVariable) ].
	self interactive
		ifFalse: [ ^ encoder undeclared: proposedVariable ].
	(cue requestor bindingOf: proposedVariable) ifNotNil: [ :binding | ^ encoder global: binding name: proposedVariable ].
	^ self declareGlobal: proposedVariable