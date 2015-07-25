initializing
baseline: spec
	<baseline>

	spec for: #common do:
		[ spec
			project: 'OSProcess' with:
				[ spec
					className: 'ConfigurationOfOSProcess';
					versionString: #stable;
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			package: 'REPL-Core' with:
				[ spec requires: #('OSProcess') ];
			package: 'REPL-Tests' with:
				[ spec requires: #('default') ];
			group: 'default' with: #('REPL-Core');
			group: 'Tests' with: #('REPL-Tests');
			group: 'TravisCI' with: #('Tests') ]