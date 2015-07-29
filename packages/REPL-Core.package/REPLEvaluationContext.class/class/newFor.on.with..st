initializing
newFor: anEvaluator on: anInterface with: aParser
	"Answer a newly created and fully initialized instance of the receiver on behalf an anEvaluator (an instance of Evaluator) used by anInterface (an instance of Interface) with the help of aParser (an instance of Parser)."
	
	^ self new
		evaluator: anEvaluator;
		interface: anInterface;
		parser: aParser;
		yourself