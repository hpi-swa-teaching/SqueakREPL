class initialization
newFor: aString with: aWorkspace
	"Create a new instance from a piece of code given in aString for
	execution in aWorkspace."

	^ self new
		source: aString;
		model: aWorkspace;
		yourself