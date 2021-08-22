as yet unclassified
printOn: aStream
	"Append, to aStream, a String whose characters are a representation of the receiver as a user
	would want to see it."
	
	aStream nextPutAll: self name