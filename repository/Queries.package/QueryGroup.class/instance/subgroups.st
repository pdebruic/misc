as yet unclassified
subgroups
	"Answer a collection with all sub groups of the receiver."
	
	^self elements select: [ :each | each isQueryGroup ]
	