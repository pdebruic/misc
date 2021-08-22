public
overlaps: aPeriod inclusive: aBoolean
	"Answer true if receiver overlaps aPeriod.
	If aBoolean is true evaluates to true if any limit of the receiver 
	is equal to any other limit in aPeriod."

	^self 
		compare: (self prior: aPeriod) end 
		with: (self later: aPeriod) beginning 
		testSelector: (aBoolean ifTrue: [#>=] ifFalse: [#>])
 
