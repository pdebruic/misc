as yet unclassified
= comparand 
	"Answer whether the receiver and the <Object>, comparand, 
	are considered equivalent (in whatever respect is appropriate for 
	the class of the receiver)."

	^(comparand class = self class and: [self groupingPolicy = comparand groupingPolicy]) 
		and: [self subGroupBuilder = comparand subGroupBuilder]