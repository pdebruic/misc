as yet unclassified
initialize
	"Private - Initialise the receiver following instantiation. The default is to do nothing.
	Answer the receiver."
	
	super initialize.
	elements := OrderedCollection new.
	cache := Dictionary new.
	cacheValue := Dictionary new.
	cacheDisplayValue := Dictionary new