completing
handleCompletingException: anException
	"Handle anException (an instance of Exception) which occured while checking whether an expression may be complete by answering a truth value (an instance of Boolean) according to circumstances."

	^ (anException messageText asLowercase = 'unmatched string quote') not