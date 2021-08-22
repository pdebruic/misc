as yet unclassified
testSuma
	self assert: (AggregateFunction sum value: #(2 2 2 10)) = 16.
	self assert: (AggregateFunction sum value: #(2 2 2 -10)) = -4