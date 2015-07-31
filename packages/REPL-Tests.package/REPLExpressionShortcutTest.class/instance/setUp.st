running
setUp
	"Set up a newly created instance of the receiver."

	self
		userInterfaceMock: REPLUserInterfaceMock new;
		context: (REPLEvaluationContext
					newFor: REPLExpressionEvaluator new
					on: self userInterfaceMock
					with: REPLExpressionParser new);
		shortcuts: REPLExpressionShortcut new;
		createTestFile;
		createTestClass 