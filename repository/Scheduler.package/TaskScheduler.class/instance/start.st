executing
start
	| process |
	running
		ifTrue: [ ^ self ].
	running := true.
	process := [ 
	[ running ]
		whileTrue: [ 
			(Duration seconds: 0.25) asDelay wait.
			self tasksDo: [ :each | each runIfNecessary ] ] ] newProcess.
	(process respondsTo: #name:)
		ifTrue: [ process name: 'taskScheduler' ].
	process priority: Processor systemBackgroundPriority.
	process resume