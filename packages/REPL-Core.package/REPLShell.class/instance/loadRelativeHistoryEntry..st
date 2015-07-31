history
loadRelativeHistoryEntry: aNumber

	| historyItem |
	self history ifEmpty: [ ^self ].
	self historyIndex: self historyIndex + aNumber.
	self historyIndex < 1 ifTrue: [ self historyIndex: 1 ].
	self historyIndex > self history size 
		ifTrue: [ historyItem := ''. self historyIndex: self history size + 1]
		ifFalse: [ historyItem := self history at: self historyIndex ].

	self interface printSameLine: historyItem.
	self buffer: historyItem