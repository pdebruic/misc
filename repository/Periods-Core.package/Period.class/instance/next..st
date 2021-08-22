public
next: anInteger
	"Answer the next anInetger periods of the receiver."
	
	^self class starting: (self beginning perform: self incrementSelector with: self periodFactor * anInteger)