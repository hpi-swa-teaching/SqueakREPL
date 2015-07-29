system
sh: aContext n: aString
	"Run a shell command in aString."

	^ (PipeableOSProcess command: aString) output asString copyReplaceAll: String cr with: String crlf