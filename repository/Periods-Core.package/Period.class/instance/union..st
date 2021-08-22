public
union: aPeriod
	"Answer a collection of periods representing the union between the receiver
	and aPeriod, if receiver and aPeriod are overlapped, they'll be merged, answering
	a collection with just one element."
 
	^(self overlaps: aPeriod) 
		ifTrue: [Array with: (self merge: aPeriod)]
		ifFalse: [Array with: (self prior: aPeriod) copy with: (self later: aPeriod) copy]