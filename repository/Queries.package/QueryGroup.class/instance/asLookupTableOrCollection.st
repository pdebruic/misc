as yet unclassified
asLookupTableOrCollection
	"Answer the receiver as a Collection of dictionaries containing the receiver's elements.
	We assume:
	Does not exists empty groups (the receiver is not empty).
	The receiver's elements are all QueryGroup or another type."

	| dic |
	dic := Dictionary new.
	^(self elements anyOne isKindOf: self class) 
		ifTrue: 
			[self elements do: [:each | dic at: each subject put: each asLookupTableOrCollection].
			dic]
		ifFalse: [self elements copy]