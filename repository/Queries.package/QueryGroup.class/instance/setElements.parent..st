as yet unclassified
setElements: aCollection parent: anIqGroup
	"Set the receiver's elemnts and parent it."
	
	self elements: aCollection.
	aCollection do: [:each | each parent: anIqGroup]