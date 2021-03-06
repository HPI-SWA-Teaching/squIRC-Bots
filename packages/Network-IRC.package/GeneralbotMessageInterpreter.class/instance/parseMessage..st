parsing
parseMessage: message
	"parse an message (without the nickname)"

	| messageParts |

	messageParts := message findTokens: ' '.

	self parseName: (messageParts at: 1).

	messageParts removeFirst.

	self parseCommand: messageParts.

	(command = 'help') ifTrue: [useTime := false. ^true].

	[messageParts size > 0] whileTrue: [
		(self parseArgument: messageParts) ifFalse: [^false]].

	^true
	
	