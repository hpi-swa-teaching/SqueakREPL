evaluation
evaluate: aString onError: aBlock
	"Evaluates the aString and returns the result. If an error occurs aBlock will be executed and is passed a REPLNotificationReceiver object with more information about the error."

	| notificationReceiver |
	notificationReceiver := REPLNotificationReceiver source: aString workspace: self workspace.
	(aString matchesRegex: '![a-z0-9_-]+')
		ifTrue: [ ^ self handleSpecialShortcut: aString ].
	^ [ 
	REPLCoreCompiler new
		evaluate: aString
		in: self workspace doItContext
		to: self workspace doItReceiver
		notifying: notificationReceiver
		ifFail: [ ^ aBlock value: notificationReceiver ]
		logged: false ]
		on: MessageNotUnderstood
		do: [ :ex | self handleException: ex ]
		on: Error
		do: [ :ex | 
			notificationReceiver lastError: ex.
			aBlock value: notificationReceiver ]