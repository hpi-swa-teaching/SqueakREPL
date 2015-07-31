evaluating
buildShortcutArguments: anException
	"Answer a collection of parameters that can be used for evaluating a shortcut based on anException."

	^ OrderedCollection new
		add: self context;
		addAll: anException message arguments;
		yourself.

