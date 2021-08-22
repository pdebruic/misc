public
later: aPeriod
	"If the receiver begins after aPeriod, answer receiver, otherwise answer aPeriod."

	^(aPeriod beginning > self beginning)
		ifTrue: [aPeriod]
		ifFalse: [self]
