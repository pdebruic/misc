accessing
startDateAndTime: aDateAndTime duration: aDuration
	nextRunTime := aDateAndTime.
	schedule :=Schedule starting: self nextRunTime duration: (Duration weeks: 1000).
	schedule schedule: {aDuration}.
	self setNextRunTime