instance creation
periodsFrom: beginning to: end
	"Answer collection with new instances of the receiver for each single period from beginning to end."

	| periods actual |
	periods := OrderedCollection new.
	actual := self from: beginning to: (end min: (self endFrom: beginning)).
	[ actual beginning <= end ]
		whileTrue: [ periods add: actual.
			actual := actual next.
			actual end: (end min: actual end) ].
	^ periods