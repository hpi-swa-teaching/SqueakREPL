initialize-release
initialize 
	"Initialize command line+ interface."

	super initialize .

	self stdOut: ThisOSProcess thisOSProcess stdOut.
	self stdIn: ThisOSProcess thisOSProcess stdIn.
