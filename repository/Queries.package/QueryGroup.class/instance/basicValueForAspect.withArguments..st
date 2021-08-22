as yet unclassified
basicValueForAspect: anOAAspect withArguments: anArray 
	"Private - Answer the value for the result of evaluating the anOAAspect with the receiver elements."

	^anOAAspect value: self policy: OAAggregateQueryGroupPolicy forValue withArguments: anArray