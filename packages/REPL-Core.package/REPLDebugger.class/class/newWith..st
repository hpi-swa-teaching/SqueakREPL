as yet unclassified
newWith: aDebugger

	| debugger |
	debugger := self basicNew.
	debugger debugger: aDebugger.
	debugger initialize.
	^debugger