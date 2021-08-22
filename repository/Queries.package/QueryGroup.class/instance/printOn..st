as yet unclassified
printOn: aStream
	"Append, to aStream, a <String> whose characters are a description of the receiver."
	
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	self subject printOn: aStream.
	aStream nextPut: $)