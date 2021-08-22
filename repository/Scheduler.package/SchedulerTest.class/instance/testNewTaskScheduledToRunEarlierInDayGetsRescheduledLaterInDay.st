accessing
testNewTaskScheduledToRunEarlierInDayGetsRescheduledLaterInDay
	| message when task |
	when := DateTime now - (Duration seconds: 60).
	task := scheduler do: [ message := 'task ran' ] at: when.
	(Duration seconds: 1.1) asDelay wait.
	self should: [ message isNil ].
	self should: [ scheduler taskCount = 1 ].
	self should: [ task nextRunTime = (DateTime date: (DateTime today +1 day) time: when) ]