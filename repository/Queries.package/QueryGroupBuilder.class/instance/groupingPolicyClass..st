as yet unclassified
groupingPolicyClass: aQueryGroupingPolicyClass
	"Sets the receiver grouping policy depending on aQueryGroupingPolicyClass."

	self groupingPolicy: (aQueryGroupingPolicyClass on: self groupingPolicyValuable)