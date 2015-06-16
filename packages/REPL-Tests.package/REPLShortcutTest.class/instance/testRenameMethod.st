testing
testRenameMethod

	| result |

	self evaluate: '#rm o:REPLMethodTestClass m:#testRename n: #newName'.

	result := self evaluate: 'REPLMethodTestClass new respondsTo: #testRename'.
	self assert: result = false.

	result := self evaluate: 'REPLMethodTestClass new newName'.
	self assert: result = 123.