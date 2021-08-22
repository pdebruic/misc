as yet unclassified
hasSubgroups
	"Answer whether the receiver has subgroups or not.
	
	Note: Is supossed that all elements at the same grouping hierarchy are of the same kind,
	QueryGroup or Object so testing for the first element of the receiver is enought."
	
	^self hasElements and: [self elements first isKindOf: self class]