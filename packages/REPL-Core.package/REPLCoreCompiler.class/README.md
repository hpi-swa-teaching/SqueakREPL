Class
--------------------------------------------------------------------------------
The CoreCompiler accepts and compiles expressions
with respect to a specific class.

Responsibility
--------------------------------------------------------------------------------
A class taking advantage of the CoreCompiler not only
provides the expression to be compiled but also the
context to be considered. If an error occurs during
the compilation process, a notification receiver
is informed immediately.

Collaboration
--------------------------------------------------------------------------------
CoreParser, EvaluationContext, NotificationReceiver