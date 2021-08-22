public
subtractAll: aCollection
	"Answer a collection of periods which results from the substraction of aPeriod from the receiver.
	If there is no overlap between receiver and the argument .
	NOTE: Very procedural codestyle, must be refactored as soon as I get inspired. EAM."

	| remainder periods union |
	remainder := OrderedCollection new.
	aCollection notEmpty 
		ifTrue: [
			union := aCollection first unionAll: aCollection.
			periods := self class createPeriodsFromLimits: (self limitsWithAllIn: aCollection).
			 remainder := periods select: [:each | (each overlapsAny: union) not and: [each overlaps: self]]
		]
		ifFalse: [ remainder add: self copy ].
	^remainder
		