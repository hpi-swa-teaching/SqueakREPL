evaluating
isRepeatableStatement: aString
	"Check whether or not a statement in aString can be used for history navigation."

	^ (aString size > 0) and: (aString lineCount = 1)