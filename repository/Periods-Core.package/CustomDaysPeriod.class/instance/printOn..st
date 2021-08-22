configuration
printOn: aStream

	self beginning asDate printOn: aStream.
	aStream nextPutAll: ' to '.
	self end asDate printOn: aStream.	
	