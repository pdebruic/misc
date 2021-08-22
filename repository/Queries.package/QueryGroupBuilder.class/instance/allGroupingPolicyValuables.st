as yet unclassified
allGroupingPolicyValuables
	"Answer a Collection with all the selectors
	for all groupingPolicies of the receiver."

	^(self asCollectionOfGroupBuilder collect: [:each | each groupingPolicyValuable]) copyWithout: nil