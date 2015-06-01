as yet unclassified
newOn: port
	"Answer new server instance on port."

	| server |
	server := REPLServer new.
	server port: port.
	^ server