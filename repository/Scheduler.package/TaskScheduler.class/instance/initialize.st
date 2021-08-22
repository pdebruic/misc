initialization
initialize
	running := false.
	tasks := OrderedCollection new.
	accessProtect := GRPlatform current semaphoreClass forMutualExclusion