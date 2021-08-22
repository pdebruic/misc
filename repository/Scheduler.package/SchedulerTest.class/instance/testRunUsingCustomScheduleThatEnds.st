accessing
testRunUsingCustomScheduleThatEnds
	| runCount schedule |
	runCount := 0.
	schedule := Schedule
		starting: DateTime now + (Duration seconds: 1)
		duration: (Duration seconds: 4).
	schedule
		schedule:
			{(Duration seconds: 1).
			(Duration seconds: 2)}.
	scheduler do: [ runCount := runCount + 1 ] following: schedule.
	(Duration seconds: 5.1) asDelay wait.

	self assert: runCount equals: 3 .
	self assert: scheduler taskCount equals: 0.