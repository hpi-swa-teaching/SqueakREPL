Class
--------------------------------------------------------------------------------
The ExpressionCompletion provides suggestions on how
to complete a possibly incomplete expression.

Responsibility
--------------------------------------------------------------------------------
A class intending to utilize the ExpressionCompletion
has to provide a Workspace for maintaining a list of
local bindings in the course of instance creation (e. g.
expressionCompletion := ExpressionCompletion
newWith: Workspace new). Afterwards, suggestions
on how to complete a possibly incomplete expression
can be obtained by invoking #complete: (e. g.
expressionComplection complete: 'Ordered').

Collaboration
--------------------------------------------------------------------------------
ExpressionEvaluator, ExpressionShortcut