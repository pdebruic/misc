configuration
next: anInteger
	"Answer the next anInetger periods of the receiver."
	
	^self class from: (self beginning perform: self incrementSelector with: self periodFactor * anInteger) to: (self end perform: self incrementSelector with: self periodFactor * anInteger)