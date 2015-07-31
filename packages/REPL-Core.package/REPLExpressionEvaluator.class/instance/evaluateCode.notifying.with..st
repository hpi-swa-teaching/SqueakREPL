evaluating
evaluateCode: aString notifying: aBlock with: aNotificationReceiver
	"Evaluate aString and return the result. If an error occurs aBlock will be evaluated
with aNotificationReceiver as an argument. This notification receiver then contains
information about the error."

	^ self class compilerClass new
		evaluate: aString
		in: self workspace doItContext
		to: self workspace doItReceiver
		notifying: aNotificationReceiver
		ifFail: [ ^ aBlock value: aNotificationReceiver ]
		logged: false