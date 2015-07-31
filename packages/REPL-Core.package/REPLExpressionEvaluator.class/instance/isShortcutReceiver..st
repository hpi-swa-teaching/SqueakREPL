evaluation
isShortcutReceiver: anException
	"Check if anException was received by a valid shortcut receiver."

	^ anException receiver isSymbol