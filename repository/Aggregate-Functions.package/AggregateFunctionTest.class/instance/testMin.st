as yet unclassified
testMin
	self assert: (AggregateFunction min value: #(-5 10 -8 100)) = -8.
	self assert: (AggregateFunction min value: #(1500 1600 10)) = 10.
	self assert: (AggregateFunction min value: #()) isNil