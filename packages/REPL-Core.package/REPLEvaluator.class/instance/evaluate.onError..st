evaluation
evaluate: aString onError: aBlock
	"Evaluates the aString and returns the result. If an error occurs aBlock will be executed and is passed a REPLEvaluationNotificationReceiver object with more information about the error."

	| notificationReceiver |

	"TODO: REPLNotificationReceiver,
	!help
      in [:ex ... gleichen notificationReceiver verwenden
      "

	notificationReceiver := REPLEvaluationNotificationReceiver 
		source: aString
		workspace: self workspace.

	(aString matchesRegex: '![a-z0-9_-]+') 
		ifTrue: [ ^self handleSpecialShortcut: aString ].

	^[ REPLCoreCompiler new
		evaluate: aString
		in: (self workspace doItContext)
		to: (self workspace doItReceiver)
		notifying: notificationReceiver
		ifFail: [ ^aBlock value: notificationReceiver ]
		logged: false. ]

			on: MessageNotUnderstood
			do: [ :ex | self handleException: ex ]

			on: Error
			do: [ :ex | | ntfy |
						ntfy := REPLEvaluationNotificationReceiver
							source: aString
							workspace: self workspace.
						ntfy lastError: ex.
						aBlock value: ntfy. ].