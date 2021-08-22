as yet unclassified
resetAspectCache: aspect
	"Reset the receiver's cache."
	
	self cache removeKey: aspect ifAbsent: [].
	self cacheValue removeKey: aspect ifAbsent: [].
	self cacheDisplayValue removeKey: aspect ifAbsent: [].
	self resetQueryGroupElementsAspectCache: aspect