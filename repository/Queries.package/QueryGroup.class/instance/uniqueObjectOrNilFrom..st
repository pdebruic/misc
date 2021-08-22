as yet unclassified
uniqueObjectOrNilFrom: aCollection
	"Private - If aCollection has as elements the same object, then answer this object, otherwise answer nil."
	
	^(aCollection asSet asOrderedCollection, ((aCollection includes: nil) ifTrue: [#(nil)] ifFalse: [#()])) size = 1
		ifTrue: [aCollection last]
		ifFalse: [nil]