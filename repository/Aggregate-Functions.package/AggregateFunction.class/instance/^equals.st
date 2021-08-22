as yet unclassified
= comparand
	"Answer whether the receiver and the <Object>, comparand, are considered equivalent."
	
	^self class = comparand class and: [self name = comparand name]