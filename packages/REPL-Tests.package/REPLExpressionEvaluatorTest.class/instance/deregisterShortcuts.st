running
deregisterShortcuts
	"deregister shortcuts for testing."

	REPLExpressionShortcut
		removeSelector: self class shortcut1name;
		removeSelector: self class shortcut2name