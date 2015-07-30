Class
--------------------------------------------------------------------------------
The ExpressionParser provides syntax analysis services
regarding expressions to be evaluated.

Responsibility
--------------------------------------------------------------------------------
A class intending to avail itself the ExpressionCompletion
can inquire whether an expression may be complete by
invoking #isCompletedExpression: (e. g. ExpressionParser
new isCompletedExpression: '1 + (2 *') or is making use of
expression shortcuts by sending the message
#makesUseOfShortcuts: (e. g. ExpressionParser new
makesUseOfShortcuts: '!quit') of the latter.

Collaboration
--------------------------------------------------------------------------------
/