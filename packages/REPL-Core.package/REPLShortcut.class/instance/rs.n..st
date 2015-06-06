script
rs: aContext n: aPath
	"Evaluate the Script given at the specified path aPath."

	| f |
	f := StandardFileStream fileNamed: aPath.
	REPLEvaluator new evaluate: f contentsOfEntireFile.
	f close.