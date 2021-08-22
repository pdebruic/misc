as yet unclassified
resetQueryGroupElementsAspectCache: aspect
	"Private - Reset the receiver's QueryGroup elements cache."
	
	self elements do: [:each | each isQueryGroup ifTrue: [each resetAspectCache: aspect]]