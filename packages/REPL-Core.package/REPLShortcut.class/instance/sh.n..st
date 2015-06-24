system
sh: aContext n: aString

	^(PipeableOSProcess command: aString) output  asString copyReplaceAll: String cr with: String crlf