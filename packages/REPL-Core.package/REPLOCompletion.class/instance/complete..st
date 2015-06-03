initialize-release
complete: aString
	"Answers a list of suggestions for completing aString."

	self model narrowWith: aString.	
	^self model entries collect: [ :eachEntry | eachEntry contents ].