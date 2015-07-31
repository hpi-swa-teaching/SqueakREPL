system
sh: aContext n: aString
	"Run a shell command in aString."

	| class |
	class := Smalltalk
			at: #PipeableOSProcess
			ifAbsent: [^ aContext userInterface print: 'Please install OSProcess.', String crlf ].

	^ (class command: aString) output asString copyReplaceAll: String cr with: String crlf