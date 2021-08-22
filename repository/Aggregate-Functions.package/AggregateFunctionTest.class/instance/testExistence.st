as yet unclassified
testExistence
	self shouldnt: [AggregateFunction named: 'Suma'] raise: NotFoundError.
	self shouldnt: [AggregateFunction named: 'Promedio'] raise: NotFoundError.
	self shouldnt: [AggregateFunction named: 'MÌn.'] raise: NotFoundError.
	self shouldnt: [AggregateFunction named: 'M·x.'] raise: NotFoundError.
	self shouldnt: [AggregateFunction named: 'Cuenta'] raise: NotFoundError