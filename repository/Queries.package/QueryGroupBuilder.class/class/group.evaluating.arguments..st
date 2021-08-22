as yet unclassified
group: aCollection evaluating: aValuableObject arguments: anArray
	"Answer a collection of IqGroup using aValuableObject."

	^self group: aCollection by: (self defaultGroupingPolicyOn: aValuableObject) arguments: anArray