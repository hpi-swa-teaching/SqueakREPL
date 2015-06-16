testing
testCreateClass

	self evaluate: '#cc s:#REPLDynamicTestClass c:#tests'.

	self assert: (Smalltalk classNamed: #REPLDynamicTestClass) notNil.