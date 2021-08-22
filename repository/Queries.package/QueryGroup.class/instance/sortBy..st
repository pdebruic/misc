as yet unclassified
sortBy: aDyadicValuable
	"Sort the receiver elements using the argument aDyadicValuable."
	
	self elements: (self elements asSortedCollection: aDyadicValuable) asOrderedCollection.
	self hasSubgroups ifTrue: [self elements do: [:each | each sortBy: aDyadicValuable]]