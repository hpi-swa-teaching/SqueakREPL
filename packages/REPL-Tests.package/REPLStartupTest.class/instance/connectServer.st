running
connectServer

	self repl: (self class classOfRepl new
					port: self class port;
					open;
					yourself)