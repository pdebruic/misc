as yet unclassified
allSubgroups
	"Answer a collection with all sub groups of the receiver."
	
	| subGroups |
	subGroups := OrderedCollection new.
	self hasSubgroups ifTrue: [
		self elements do: [:each |
			subGroups add: each; addAll: each allSubgroups]].
	^subGroups