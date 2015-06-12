evaluation
evaluate: aString onError: aBlock
	"Evaluates the aString and returns the result. If an error occurs aBlock will be executed and is passed a REPLEvaluationNotificationReceiver object with more information about the error."

	| notificationReceiver |

	notificationReceiver := REPLEvaluationNotificationReceiver 
		source: aString
		workspace: self workspace.

	^ [ REPLCoreCompiler new
		evaluate: aString
		in: (self workspace doItContext)
		to: (self workspace doItReceiver)
		notifying: notificationReceiver
		ifFail: [ ^aBlock value: notificationReceiver ]
		logged: false. ]
			on: MessageNotUnderstood
			do: [ :ex | self handleException: ex ].