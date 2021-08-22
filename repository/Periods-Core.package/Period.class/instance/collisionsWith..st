public
collisionsWith: aPeriod
	"Private - Answer a collection of TimeStamps which represents the extremes 
	in which receiver and aPeriod get in contact ."

	| points |
	points:= SortedCollection new.
	points 
		add: aPeriod beginning; 
		add: aPeriod end;
		add: self beginning;
		add: self end.
	^points asOrderedCollection reject: [:each | each < self beginning or: [each > self end] ]
