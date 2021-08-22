accessing
testRunOnlyOnceWithOnlyTimeSpecified
	| runCount |
	runCount := 0.
	scheduler doOnce: [ runCount := runCount + 1 ] at: (DateTime now + (Duration seconds: 1)) .
	(Duration seconds: 1.1) asDelay wait.
	self should: [ runCount = 1 ].
	self should: [ scheduler taskCount = 0 ]