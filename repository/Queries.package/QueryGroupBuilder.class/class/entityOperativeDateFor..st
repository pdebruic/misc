as yet unclassified
entityOperativeDateFor: aTransactionClass 
	"Answer a new instance of the receiver grouping for entity & DateAndTime."

	| entityAspect dateAndTimeAspect |
	entityAspect := aTransactionClass entityAspect.
	dateAndTimeAspect := aTransactionClass businessDateDescription.
	^(self groupBy: (Array with: (self defaultGroupingPolicyOn: entityAspect)
				with: (self defaultGroupingPolicyOn: dateAndTimeAspect)))
		description: entityAspect label , ' y ' , dateAndTimeAspect label;
		yourself