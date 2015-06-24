method
cm: aContext o: anObject c: aString
	"Create a new method which is attached to anObject (an instance of Object) and whose source code is set according to aString (an instance of String)."

	| parser server confirmationReceived|
	 parser := REPLParser new.

	(parser  makesUseOfShortcuts: aString) 
		ifTrue: [
			server := aContext server.
			server
				print: 'Warning: Please note that you have one or more shortcuts in your method declaration. Someone, who does not have the REPL package, may therefore not be able to use it.
Do you want to proceed? Please enter y or n: ';
		 		nextIsConfirmation: true.
			confirmationReceived := false.
			confirmationReceived 
				whileFalse: [
					(server confirmed == nil ) 
						ifFalse: [
				 			server confirmed 
								ifTrue: [
									anObject compile: aString.
									server print: 'The method was saved.'.]
								ifFalse: [
									server print: 'The method was not saved.'.].
							server confirmed: nil.
							^ self			
						].
				].
			].

	anObject compile: aString