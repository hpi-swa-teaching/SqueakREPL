as yet unclassified
drawAlt

	| maxWidth probe factor m |

	maxWidth := 80.
	probe := PluggableSystemWindow allInstances at: 1.
	factor := maxWidth / probe width.


	m := String new.

	1 to: 100 do: [ :x | 
	    1 to: maxWidth do: [ :y | 
			m := m, '/'.
		].
		m := m, Character cr.
	].


	(PluggableSystemWindow allInstances at: 3) submorphsDo: [ :a |
		| w h px py |
	
		"Transcript show: a; show: Character cr."

		w := (a width * factor) rounded.
		h := (a height * factor) rounded.
		px := ((a position x) * factor) rounded.
		py := ((a position y) * factor) rounded.
		Transcript show: a; show: (Character cr).
		Transcript show: (py); show: w; show: ':'.
		Transcript show: (px); show: h; show: (Character cr).
		Transcript show: factor; show: (Character cr); show: (Character cr).
		px to: (px + w) do: [ :x |
			py to: (py + h) do: [ :y |
				m replaceFrom: (((y) * 81) + x + 1) to: (((y) * 81) + x + 1) with: '#' startingAt: 1.
			].
		].
	].

	m replaceFrom: 1 to: 1 with: '+' startingAt: 1.
	m replaceFrom: 80 to: 80 with: '+' startingAt: 1.



	Transcript
		show: Character cr;
		show: m.
