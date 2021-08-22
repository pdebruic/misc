operations
withSuperiorFrequencyClasses
	"Answer a collection with the inferior frequency than the receiver."

	^ (OrderedCollection with: self)
		, (Period concreteSubclasses select: [ :each | each isGreatherThan: self ])
		asSortedCollection: [ :a :b | b isGreatherThan: a ]