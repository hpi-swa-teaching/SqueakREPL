testing
testDeleteMethod

	| result |

	self evaluate: '#dm o:REPLMethodTestClass m:#testDelete'.

	result := self evaluate: 'REPLMethodTestClass new respondsTo: #testDelete'.

	self assert: result = false.