public
prior: aPeriod
	"If the receiver begins before aPeriod, answer receiver, otherwise answer aPeriod."

	^(aPeriod beginning < self beginning)
		ifTrue: [aPeriod]
		ifFalse: [self]