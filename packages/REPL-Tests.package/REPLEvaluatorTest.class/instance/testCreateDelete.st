testing-shortcuts
testCreateDelete
	"TODO: This test fails on TravisCI."

	| instance |

	"Create a new class."
	self evaluator
		evaluate: '#cc s:#REPLTemporaryClass c:#tests'.

	self assert: (Smalltalk classNamed: #REPLTemporaryClass) notNil.

	"Create a new method."
	self evaluator
		evaluate: '#cm o:REPLTemporaryClass c:#''foo
    ^ #bar'''.

	"Check instance creation."
	instance := self evaluator
		evaluate: 'obj := REPLTemporaryClass new.'.

	self
		assert: instance notNil;
		assert: (instance respondsTo: #foo);
		assert: (instance foo = #bar);
		assert: ((self evaluator evaluate: 'obj foo') = #bar).

	"Remove method."
	self evaluator
		evaluate: '#dm o:REPLTemporaryClass m:#foo'.

	self assert: ((instance respondsTo: #foo) = false).

	"Remove class."
	self evaluator evaluate: '#dc o:REPLTemporaryClass'.

	self assert: ((Smalltalk classNamed: #REPLTemporaryClass) = nil) .