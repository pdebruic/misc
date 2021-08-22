public
subtract: aPeriod 
	"Answer a collection of periods which results from the substraction of aPeriod from the receiver.
	If there is no overlap between receiver and the argument .
	NOTE: Very procedural codestyle, must be refactored as soon as I get inspired. EAM."

	^self subtractAll: (Array with: aPeriod)