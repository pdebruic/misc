as yet unclassified
groupingPolicy: aGroupingPolicy 
	"Set the value of the receiver's ''groupingPolicy'' instance variable to the argument, anObject."

	groupingPolicy ifNotNil: [:old | aGroupingPolicy valuable: old valuable].
	groupingPolicy := aGroupingPolicy