executing
runIfNecessary

	((DateTime now >= self nextRunTime) and: [self isRunning not]) ifTrue: [self run]