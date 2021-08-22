accessing
testRunAtSomeTimeInTheFuture
	| task timeToRun |
	timeToRun := DateTime now + (Duration seconds: 2).
	task := scheduler do: [  ] at: timeToRun every: (Duration hours: 1).
	(Duration seconds: 2.1) asDelay wait.
	self should: [ task nextRunTime = (timeToRun + (Duration hours: 1)) ].
	self should: [ task schedule schedule first = (Duration hours: 1) ].
	self should: [ scheduler taskCount = 1 ]