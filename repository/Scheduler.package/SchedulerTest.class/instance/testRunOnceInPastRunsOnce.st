accessing
testRunOnceInPastRunsOnce
	| message |
	scheduler doOnce: [ message := 'task ran' ] at: DateTime now - (Duration seconds: 1).
	(Duration seconds: 1) asDelay wait.
	self should: [ message = 'task ran' ].
	self should: [ scheduler taskCount = 0 ]