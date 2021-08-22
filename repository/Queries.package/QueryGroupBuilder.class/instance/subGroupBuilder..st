as yet unclassified
subGroupBuilder: aGroupBuilder
	"Set the value of the receiver's ''subGroupBuilder'' to the argument aGroupBuilder
	performing a insert in the Group-SubGroup chain if necessary."

	| old |
	old := subGroupBuilder.
	self basicSubGroupBuilder: aGroupBuilder.
	aGroupBuilder ifNil: [^self].
	old ifNotNil: [(self lastBuilderOf: aGroupBuilder) basicSubGroupBuilder: old]
	
	
	