as yet unclassified
basicDisplayValueForAspect: anOAAspect withArguments: anArray 
	"Private - Answer the display value for the result of evaluating the anOAAspect with the receiver elements."

	^anOAAspect value: self policy: OAAggregateQueryGroupPolicy forDisplayValue withArguments: anArray