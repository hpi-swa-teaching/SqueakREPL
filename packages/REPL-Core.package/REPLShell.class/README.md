Class
--------------------------------------------------------------------------------
The Shell provides the core of the REPL as it represents
its state and connects all components.

Responsibility
--------------------------------------------------------------------------------
The shell is instantiated by an interface (e.g., TelnetServer) 
and communicates by sending #output and #print and
receiving #accept commands (e.g., #acceptArrowUp).

Collaboration
--------------------------------------------------------------------------------
TelnetServer, Debugger, ExpressionCompletion,
ExpressionEvaluator