public
= aPeriod
	"Answer the receiver is equal to aPeriod."

	^self class = aPeriod class and: [self beginning = aPeriod beginning and: [self end = aPeriod end]]
