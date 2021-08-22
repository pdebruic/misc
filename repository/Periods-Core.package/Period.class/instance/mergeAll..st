public
mergeAll: aCollection
	"Answer a period which is the merge between receiver and aCollection of Periods.
	The merging produces a period which combines the earlier beginning and the later end."

	^aCollection isEmpty 
		ifTrue: [self copy]
		ifFalse: [
			| minBeginning maxEnd |
			minBeginning := (aCollection asSortedCollection: [:a :b | a beginning <= b beginning ]) first beginning.
			maxEnd := (aCollection asSortedCollection: [:a :b | a end <= b end ]) last end.
			Period from: (self beginning min: minBeginning) to: (self end max: maxEnd)
		]
