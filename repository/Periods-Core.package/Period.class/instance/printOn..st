public
printOn: aStream
	"Prints a readable textual representation of receiver on aStream."

	self class printOn: aStream.
	aStream nextPutAll: ' from '.
	self beginning printOn: aStream.
	aStream nextPutAll: ' to '.
	self end printOn: aStream