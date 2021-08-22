as yet unclassified
initialize

	Functions := (self withAllSubclasses reject: [:each | each isAbstract]) asOrderedCollection collect: [:each | each new]