as yet unclassified
correctVariable: proposedVariable interval: spot 
	"Correct the proposedVariable to a known variable, or declare it as a new
	variable if such action is requested.  We support declaring lowercase
	variables as temps or inst-vars, and uppercase variables as Globals or 
	ClassVars, depending on whether the context is nil (class=UndefinedObject).
	Spot is the interval within the test stream of the variable.
	rr 3/4/2004 10:26 : adds the option to define a new class. "


	| binding |
	(encoder classEncoding instVarNames includes: proposedVariable) ifTrue: 
		[^InstanceVariableNode new 
			name: proposedVariable
			index: (encoder classEncoding allInstVarNames indexOf: proposedVariable)].

	"If we can't ask the user for correction, make it undeclared"
	self interactive ifFalse: [^encoder undeclared: proposedVariable].

	"First check to see if the requestor knows anything about the variable"
	(binding := cue requestor bindingOf: proposedVariable)
		ifNotNil: [^encoder global: binding name: proposedVariable].

	^self declareGlobal: proposedVariable