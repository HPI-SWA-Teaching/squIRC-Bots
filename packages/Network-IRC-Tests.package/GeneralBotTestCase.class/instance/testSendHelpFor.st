testing
testSendHelpFor

	| bot parser spy |
	bot := GeneralBot new.

	"LBMI because GeneralbotMessageInterpreter>>help is in subclassResponsibility."
	parser := LogbotMessageInterpreter parseIRCMessage: 'nick : !lb help'.

	spy := IRCConnectionMessageLogger new.

	bot connection: spy.

	spy clearMessages.
	bot sendHelpFor: parser.
	self should: [ (spy messages removeFirst) = #msgObserver ].
	self should: [ (spy messages removeFirst) = #talkingTo: ].

	spy messages do: [ :message |
		self should: [ ( message = #msgObserver ) xor: ( message = #sendMessage: ) ]
	]