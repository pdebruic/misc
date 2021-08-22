accessing
testDailyTaskDoesntGetsAheadIfRunExplicitly
	| task |
	task := scheduler do: [ 'task ran' ] at: DateTime now + (Duration seconds: 10).
	self should: [ task nextRunTime atStartOfDay = DateTime today ].
	task run.	"run explicitly before scheduled time"
	self should: [ task nextRunTime atStartOfDay = DateTime today ]