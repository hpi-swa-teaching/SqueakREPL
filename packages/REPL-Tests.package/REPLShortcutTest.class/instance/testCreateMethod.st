testing
testCreateMethod

	| result |

	self evaluate: '#cm o:REPLMethodTestClass c:#''foo
^1234'''.

	result := self evaluate: 'REPLMethodTestClass new foo'.

	self assert: result = 1234.