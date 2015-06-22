completion
complete: aString
	"Answers a list of suggestions for completing aString."

	| results |

	self model narrowWith: aString.	
	results := self model entries collect: [ :eachEntry | self format: eachEntry ].

	self workspace ifNotNilDo: [ :x | self workspace bindings keys reverseDo: [ :each | (each asString startsWith: aString) ifTrue: [ results addFirst: each ] ] ].

	^results.