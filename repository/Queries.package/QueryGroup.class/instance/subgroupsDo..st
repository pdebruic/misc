as yet unclassified
subgroupsDo: aBlock
	
	^self elements do: [:each | each isQueryGroup ifTrue: [aBlock cull: each cull: each subject]]
	