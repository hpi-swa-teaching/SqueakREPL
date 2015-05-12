"http://stackoverflow.com/questions/3067563/using-squeak-from-a-shell"

OSProcess thisOSProcess stdOut
    nextPutAll: 'Welcome to the simple Smalltalk REPL';
    nextPut: Character lf; nextPut: $>; flush.

[
    |input|
    [
        input := OSProcess readFromStdIn.
        input size > 0 ifTrue: [
            OSProcess thisOSProcess stdOut
            nextPutAll: (Compiler evaluate: input) asString;
            nextPut: Character lf; nextPut: $>; flush
        ]
    ] repeat.
] forkAt: (Processor userBackgroundPriority)
