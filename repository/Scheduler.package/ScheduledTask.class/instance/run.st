executing
run

	workerProcess := [[task value] ensure: [runHistory add: DateTime now]] fork.

	self wasRun