running
setUp
	super setUp.
	self evaluator: REPLEvaluator new.

	Object
		subclass: #REPLMethodTestClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: #tests.

	(Smalltalk classNamed: #REPLMethodTestClass)
		compile: 'testRename
^ 123.';
		compile: 'testDelete
^ 123'.
