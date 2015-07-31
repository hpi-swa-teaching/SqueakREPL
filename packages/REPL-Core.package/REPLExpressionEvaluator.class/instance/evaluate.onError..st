evaluation
evaluate: aString onError: aBlock
	"Evaluate the code given in aString and return the result. If an error occurs aBlock
	will be executed and is passed a REPLNotificationReceiver object
	with more information about the error."

	| notificationReceiver |
	notificationReceiver := self class classOfNotificationReceiver
								newFor: aString
								with: self workspace.

	self context ifNil: [ self initializeContext ].

	(self isSpecialShortcut: aString)
		ifTrue: [ ^ self handleSpecialShortcut: aString ].

	^ [ self class compilerClass new
			evaluate: aString
			in: self workspace doItContext
			to: self workspace doItReceiver
			notifying: notificationReceiver
			ifFail: [ ^ aBlock value: notificationReceiver ]
			logged: false ]

				on: MessageNotUnderstood
				do: [ :ex | self handleException: ex ]

				on: Warning
				do: [ :ex | self handleWarning: ex ]

				on: Error
				do: [ :ex |  notificationReceiver lastError: ex.
							aBlock value: notificationReceiver ]