as yet unclassified
operativeDateFor: aTransactionClass 
	"Answer a new instance of the receiver grouping for operativeDate."

	^(self groupBy: (self defaultGroupingPolicyOn: aTransactionClass businessDateDescription))
		description: aTransactionClass businessDateDescription label;
		yourself