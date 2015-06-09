testing-shortcuts
testCreateDelete
	"TODO: This test fails on TravisCI."

	| instance |

	Transcript show: 'beginnging test'; cr.

	"Create a new class."
	self evaluator
		evaluate: '#cc s:#REPLTemporaryClass c:#tests'.

	Transcript show:'class created'; cr.
	Transcript show: Smalltalk; cr.
	Transcript show: (SmalltalkImage current); cr.
	Transcript show: (SmalltalkImage current classNames); cr.
	Transcript show: (Smalltalk classNamed: #REPLTemporaryClass); cr.

	self assert: (Smalltalk classNamed: #REPLTemporaryClass) notNil.

	"Create a new method."
	self evaluator
		evaluate: '#cm o:REPLTemporaryClass c:#''foo
    ^ #bar'''.

	Transcript show: 'method created'; cr.

	"Check instance creation."
	instance := self evaluator
		evaluate: 'obj := REPLTemporaryClass new.'.

	Transcript show: 'instance grabbed'; cr.
	Transcript show: instance; cr.

	self
		assert: instance notNil.
	Transcript show: 'notNil passed'; cr.
	self
		assert: (instance respondsTo: #foo).
	Transcript show: 'respondsTo passed'; cr.
	self
		assert: (instance foo = #bar).
	Transcript show: 'method call passed'; cr.
	self
		assert: ((self evaluator evaluate: 'obj foo') = #bar).
	Transcript show: 'method call 2 passed'; cr.

	"Remove method."
	self evaluator
		evaluate: '#dm o:REPLTemporaryClass m:#foo'.

	Transcript show: 'method removed'; cr.

	self assert: ((instance respondsTo: #foo) = false).

	"Remove class."
	self evaluator evaluate: '#dc o:REPLTemporaryClass'.
	Transcript show: 'class removed'; cr.

	self assert: ((Smalltalk classNamed: #REPLTemporaryClass) = nil) .

	Transcript show: 'test finished'; cr.
