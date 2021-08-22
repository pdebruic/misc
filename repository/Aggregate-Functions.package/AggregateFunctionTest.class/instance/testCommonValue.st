as yet unclassified
testCommonValue
	"Test the method commoValue."
	
	self assert: (AggregateFunction commonValue value: #(4 4 4 4)) = 4.
	self assert: (AggregateFunction commonValue value: #(4 4 2 3)) isNil