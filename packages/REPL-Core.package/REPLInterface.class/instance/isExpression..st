reading
isExpression: aString 
	"Answer whether aString is expression."
	^ self parser isCompletedExpression: aString