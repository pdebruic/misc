as yet unclassified
testPromedio
	self assert: (AggregateFunction avg value: #(7 7 7 7)) = 7.
	self assert: (AggregateFunction avg value: #(2 5 7 2)) = 4.
	self assert: (AggregateFunction avg value: #()) = 0