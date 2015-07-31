history
loadRelativeHistoryEntry: aNumber
	"Move history index by aNumber and load entry at index."

	| historyItem |
	self history ifEmpty: [ ^self ].
	self historyIndex: self historyIndex + aNumber.
	self historyIndex < 1 ifTrue: [ self historyIndex: 1 ].
	self historyIndex > self history size
		ifTrue: [ historyItem := ''. self historyIndex: self history size + 1]
		ifFalse: [ historyItem := self history at: self historyIndex ].

	self interface printInline: historyItem.
	self cursorPosition: historyItem size + 1.
	self input: historyItem
