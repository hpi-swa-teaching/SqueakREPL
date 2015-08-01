evaluating
isRepeatableStatement: aString
	"Check whether or not a statement in aString can be used for history navigation."

	^ aString notEmpty and: [ aString lineCount = 1 ]