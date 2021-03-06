testing
testSendStatusFor

	| bot spy parser |
	bot := UtilityBot new.
	spy := IRCConnectionMessageLogger new.
	
	bot connection: spy.

	parser := UtilitybotMessageInterpreter parseIRCMessage: 'nick : !ub status InterpreterBot'.
	spy clearMessages.
	bot sendStatusFor: parser.
	self should: [ spy messages asArray = #( #msgObserver #talkingTo: #msgObserver #sendMessage: ) ].

	parser := UtilitybotMessageInterpreter parseIRCMessage: 'nick : !ub status LogBot'.
	spy clearMessages.
	bot sendStatusFor: parser.
	self should: [ spy messages asArray = #( #msgObserver #talkingTo: #msgObserver #sendMessage: ) ].

	parser := UtilitybotMessageInterpreter parseIRCMessage: 'nick : !ub status all'.
	spy clearMessages.
	bot sendStatusFor: parser.
	self should: [ spy messages asArray = #( #msgObserver #talkingTo: #msgObserver #sendMessage: #msgObserver #sendMessage: ) ].