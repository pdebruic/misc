accessing
testRunUsingCustomSchedule
	| runCount schedule |
	runCount := 0.
	schedule := Schedule starting: DateTime now duration: (Duration minutes: 1).
	schedule
		schedule:
			{(Duration seconds: 1).
			(Duration seconds: 2).
			(Duration seconds: 20)}.
	scheduler do: [ runCount := runCount + 1 ] following: schedule.
	(Duration seconds: 3.1) asDelay wait.
	self should: [ runCount = 2 ].
	self should: [ scheduler taskCount = 1 ]