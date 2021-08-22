as yet unclassified
testCuenta
	self assert: (AggregateFunction count value: #(2 2 2 10)) = 4.
	self assert: (AggregateFunction count value: #()) = 0