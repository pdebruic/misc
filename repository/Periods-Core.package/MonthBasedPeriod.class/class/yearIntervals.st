private
yearIntervals
	"Private - Answer the intervals of time representating the receiver period range."
	
	^(1 to: 12 by: self periodFactor) collect: [:each | each to: each + (self periodFactor - 1)]
	
		
	