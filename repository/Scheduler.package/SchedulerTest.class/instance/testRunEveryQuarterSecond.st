accessing
testRunEveryQuarterSecond
	| runCount |
	runCount := 0.
	scheduler do: [ runCount := runCount + 1 ] every: (Duration milliseconds: 250).
	(Duration milliseconds: 900) asDelay wait.
	self assert: runCount equals: 3.
	self assert: scheduler taskCount equals: 1