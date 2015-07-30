accessing
bindings
	"Pretend to be an ordinary workpace by answering a dictionary of local bindings."

	^ Dictionary new
		at: 'aValue' put: 1;
		at: 'bValue' put: 2;
		at: 'cValue' put: 3;
		yourself