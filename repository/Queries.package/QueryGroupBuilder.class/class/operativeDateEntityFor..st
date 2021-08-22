as yet unclassified
operativeDateEntityFor: aTransactionClass 
	"Answer a new instance of the receiver grouping for operativeDate & entity."

	| entityAspect operativeDateAspect |
	entityAspect := aTransactionClass entityAspect.
	operativeDateAspect := aTransactionClass businessDateDescription.
	^(self groupBy: (Array with: (self defaultGroupingPolicyOn: operativeDateAspect)
				with: (self defaultGroupingPolicyOn: entityAspect)))
		description: operativeDateAspect label , ' y ' , entityAspect label;
		yourself