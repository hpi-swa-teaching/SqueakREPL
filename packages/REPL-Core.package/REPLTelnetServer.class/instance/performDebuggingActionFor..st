debugging
performDebuggingActionFor: aCharacter

	| usedButtonShortcuts buttonLine |
	usedButtonShortcuts := Set new.
	buttonLine := '    '.

	self debugger customButtonSpecs
		do: [ :aButtonSpec | 
			| shortcutLetter buttonBlock buttonLabel labelWithHint labelBeforeHint labelAfterHint |
			buttonLabel := aButtonSpec first.
			buttonBlock := aButtonSpec second.
			shortcutLetter := buttonLabel first asString asLowercase.

			(usedButtonShortcuts includes: shortcutLetter)
				ifFalse: [
					labelBeforeHint := ''.
					labelAfterHint := (buttonLabel copyFrom: 2 to: buttonLabel size) ]
				ifTrue: [ 
					shortcutLetter := buttonLabel second asString asLowercase.
					labelBeforeHint := buttonLabel first asString.
					labelAfterHint := (buttonLabel copyFrom: 3 to: buttonLabel size) ].

			labelWithHint := labelBeforeHint, (self class colorize: shortcutLetter asUppercase with: self class colorInfo), labelAfterHint.
			buttonLine := buttonLine , '[ ' , labelWithHint , ' ]  '.
		 	usedButtonShortcuts add: shortcutLetter.

			aCharacter = shortcutLetter asCharacter
				ifTrue: [self debugger perform: buttonBlock]].

	^ buttonLine