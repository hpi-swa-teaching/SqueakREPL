method
cm: aContext o: anObject c: aString
	"Create a new method which is attached to anObject (an instance of Object) and whose source code is set according to aString (an instance of String)."
	| parser |
	 parser := REPLParser new.
	(parser  makesUseOfShortcuts: aString) 
		ifTrue: [
		(REPL instance) print: 'Warning: Please note that you have one or more shortcuts in your method declaration. Someone, who does not have the REPL package, may therefore not be able to use it.'. ].
	anObject compile: aString