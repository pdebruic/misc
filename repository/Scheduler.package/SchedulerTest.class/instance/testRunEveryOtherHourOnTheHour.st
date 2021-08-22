accessing
testRunEveryOtherHourOnTheHour
	| currentTime task |
	scheduler stop.
	currentTime := DateTime now.
	task := scheduler do: [  ] at: currentTime every: (Duration hours: 2).
	task run.
	self should: [ task nextRunTime hour = (currentTime + (7200 seconds)) hour ].
	self should: [ task nextRunTime > DateTime now ]