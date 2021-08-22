as yet unclassified
lastBuilderOf: aGroupBuilder
	"Private - Answer the last element in the GroupBuilder - subGroupBuilder chain of aGroupBuilder."

	| elem |
	elem := aGroupBuilder.
	[elem subGroupBuilder notNil] whileTrue: [elem := elem subGroupBuilder].
	^elem

	
	