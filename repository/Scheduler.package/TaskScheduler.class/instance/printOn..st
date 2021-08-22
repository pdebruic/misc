printing
printOn: aStream

	aStream
		nextPutAll: 'Task scheduler is ', (running ifTrue: ['running'] ifFalse: ['stopped']);
		nextPutAll: ' with ';
		nextPutAll: self taskCount asWords;
		nextPutAll:' task'.
		
	self taskCount = 1 ifFalse: [aStream nextPut: $s]