public
starting: aDateTime
	^ self
		from: aDateTime atStartOfDay
		to: (aDateTime addingDays: self periodFactor) - 1 second