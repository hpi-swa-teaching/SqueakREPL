running
connectClient
	Socket initializeNetwork.
	self
		client:
			(Socket new
				connectTo: (NetNameResolver addressForName: 'localhost') port: self class port;
				yourself).
	self client receiveAvailableData