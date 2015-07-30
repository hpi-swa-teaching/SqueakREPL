completing
handleCompletingException: anException
	"Handle anException which occured while checking whether an expression may be complete by answering a truth value according to circumstances."

	^ (anException messageText asLowercase = 'unmatched string quote') not