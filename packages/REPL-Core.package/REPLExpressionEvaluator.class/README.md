Class
--------------------------------------------------------------------------------
The ExpressionEvaluator provides  an interface
to evaluate smalltalk source code.

Responsibility
--------------------------------------------------------------------------------
A class intending to utilize the ExpressionEvaluator has
to provide an EvaluationContext in order to grant access
to the user interface. Afterwards the user can evaluate
code using the #evaluate: and #evaluate:onError: messages.

Collaboration
--------------------------------------------------------------------------------
ExpressionShortcut, NotificationReceiver, EvaluationContext,
CoreCompiler