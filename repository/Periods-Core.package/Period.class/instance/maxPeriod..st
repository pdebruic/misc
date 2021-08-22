public
maxPeriod: aPeriod
	"Answer the object with greater period, the receiver or <aPeriod>."
	
	^(self isGreatherThan: aPeriod)
		ifTrue: [self] ifFalse: [aPeriod]