# Ein paar Einsichten zu unserem Freund, das OSProcess

Mit `OSProcess>>thisOSProcess` bekommen wir den Prozess, der die VM gestartet hat.
Bei mir wäre das zum Beispiel `a UnixProcess with pid 39735`.
Was da zurückkommt ist ein Singleton, das in der Klasse ThisOSProcess verwaltet wird.

Schaut ihr in das initialize von (der Klasse) ThisOsProcess, findet ihr die 2 Zweilen
`Smalltalk addToStartUpList: ThisOSProcess.
Smalltalk addToShutDownList: ThisOSProcess`

Hier trägt sich die Klasse ThisOSProcess in die StartUpList von SmalltalkImage ein.
Wenn das Image "hochfährt", wird an all die Klassen in SmalltalkImage>>processStartUpList ein #startUp gesendet.
So auch an unser ThisOSProcess. ThisOSPorcess initialisiert daraufhin sein Singleton.


*TL;DR*
SmalltalkImage addToStartUpList:
SmalltalkImage addToShutDownList:
SmalltalkREPL startUp:`
