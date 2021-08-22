as yet unclassified
entityFor: aTransactionClass
	"Answer a new instance of the receiver grouping for entity."

	| aspect |
	aspect := aTransactionClass entityAspect.
	^(self groupBy: (self defaultGroupingPolicyOn: aspect))
		description: aspect label;
		yourself
		
		