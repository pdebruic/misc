as yet unclassified
testNone
	"Test the method commoValue."
	
	self assert: (AggregateFunction none value: #(4 4 4 4)) isNil.
	self assert: (AggregateFunction none value: #(4 2 4 3)) isNil.
	self assert: (AggregateFunction none value: #()) isNil