as yet unclassified
groupBy: groupingPolicies
	"Answer a new instance of the receiver suitable for use
	calling #group: instance message."

	| policies |
	policies := (groupingPolicies isKindOf: Collection)
		ifTrue: [groupingPolicies]
		ifFalse: [Array with: groupingPolicies].
	^self newGroupBy: policies