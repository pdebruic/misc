accessing
testRunDailyTaskNeverGetsBehind
	| task |
	scheduler stop.
	task := scheduler do: [ 'task ran' ] at: DateTime now.
	task startDateAndTime: task nextRunTime - (Duration days: 2) duration: (Duration days: 1).
	scheduler start.
	(Duration seconds: 1) asDelay wait.
	self should: [ task nextRunTime asDate = DateTime tomorrow ].
	task
		startDateAndTime: DateTime now + (Duration seconds: 180) - (Duration days: 1)
		duration: (Duration days: 1).
	(Duration seconds: 1) asDelay wait.
	self should: [ task nextRunTime asDate = DateTime today ]