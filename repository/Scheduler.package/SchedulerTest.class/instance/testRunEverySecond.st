accessing
testRunEverySecond
	| runCount |
	runCount := 0.
	scheduler do: [ runCount := runCount + 1 ] every: (Duration seconds: 1).
	(Duration seconds: 3.1) asDelay wait.
	self should: [ runCount = 3 ].
	self should: [ scheduler taskCount = 1 ]