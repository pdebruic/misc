accessing
testRunInASecond
	| ranWhen now |
	now := DateTime now.
	scheduler do: [ ranWhen := DateTime now ] at: now + (Duration seconds: 1).
	(Duration seconds: 2) asDelay wait.
	self should: [ ranWhen = (now + (Duration seconds: 1)) ]