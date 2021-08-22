as yet unclassified
group: aCollection by: groupingPolicies arguments: anArray
	"Answer a collection of IqGroup using groupingPolicies."

	| policies |
	policies := (groupingPolicies isKindOf: Collection)
		ifTrue: [groupingPolicies]
		ifFalse: [Array with: groupingPolicies].
	^(self groupBy: policies) group: aCollection arguments: anArray