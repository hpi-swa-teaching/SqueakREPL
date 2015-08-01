evaluating
buildShortcutMessage: anException
	"Answer a message that can be used for evaluating a shortcut based on anException."

	anException message selector = self class characterOfSpecialExpressionShortcut asSymbol
		ifTrue: [ anException message setSelector: self class defaultParameterName ].
	^ anException receiver asString , ':' , anException message selector asString