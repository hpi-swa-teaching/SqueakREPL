class initialization
source: aString workspace: aWorkspace
	"Creates a new instance from a piece of code given in aString for
	execution in aWorkspace."

	^ self new
		text: aString;
		model: aWorkspace;
		yourself