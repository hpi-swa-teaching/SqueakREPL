Class
--------------------------------------------------------------------------------
The Shell provides the core of the REPL as it represents
the bridge between all components and its logic state.

Responsibility
--------------------------------------------------------------------------------
The Shell may only be instantiated by using an interface
class like the TelnetServer.

Collaboration
--------------------------------------------------------------------------------
TelnetServer, Debugger, ExpressionCompletion,
ExpressionEvaluator