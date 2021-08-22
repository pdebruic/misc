public
intersect: aPeriod
	"Answer a Period which is the intersection between receiver and aPeriod.
	Answer nil if there is no overlap between receiver and the argument."

	^(self overlaps: aPeriod inclusive: false) 
		ifTrue: [| collisions |
			collisions := SortedCollection new.
			collisions add: ((self beginsAfterOrEqualThan: aPeriod) ifTrue: [self] ifFalse: [aPeriod]) beginning.
			collisions add: ((self endsAfterOrEqualThan: aPeriod ) ifTrue: [aPeriod] ifFalse: [self ]) end.
			self species from: collisions first to: collisions last
		]
		ifFalse: [nil]
