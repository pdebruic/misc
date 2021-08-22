as yet unclassified
testMax
	self assert: (AggregateFunction max value: #(-5 10 -8 100))  = 100.
	self assert: (AggregateFunction max value: #(1500 1600 10)) = 1600.
	self assert: (AggregateFunction max value: #()) isNil