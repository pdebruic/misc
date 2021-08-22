accessing
testRunSeveralTasks
	| task1 task2 now |
	now := DateTime now.
	scheduler do: [ task1 := 'task 1' ] at: now + (Duration seconds: 1).
	scheduler do: [ task2 := 'task 2' ] at: now + (Duration seconds: 1).
	(Duration seconds: 1.1) asDelay wait.
	self should: [ task1 = 'task 1' ].
	self should: [ task2 = 'task 2' ]