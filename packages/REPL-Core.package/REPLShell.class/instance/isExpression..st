evaluating
isExpression: aString
	"Answer if aString is an completed expression."

	^ self parser isCompletedExpression: aString