testing-shortcuts
testCreateDeleteClass
	"Create a new class."
	self evaluator
		evaluate: '#cc s:#REPLTemporaryClass c:#tests'.

	self assert: (Smalltalk classNamed: #REPLTemporaryClass) notNil.