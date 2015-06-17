system startup
shutDown: quitting
	"Remove singleton instance if one was created last startUp."

	[ Instance close ] on: Exception do: []
