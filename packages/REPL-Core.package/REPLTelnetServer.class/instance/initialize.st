initialize-release
initialize
	"Initialize server."

	self
		socket: Socket newTCP;
		port: self class defaultPort;
		readMode: #regular;
		shell: REPLShell new.

	self shell interface: self.