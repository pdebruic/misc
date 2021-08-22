public
merge: aPeriod
	"Answer a new instance which is the merge between receiver and aPeriod.
	The merging produces a period which combines the earlier beginning and the later end."
 
	^self mergeAll: (Array with: aPeriod)
