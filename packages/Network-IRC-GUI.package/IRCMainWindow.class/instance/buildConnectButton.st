actionButtons
buildConnectButton
| button |
	
	button := IRCGUIHelper 
				toggleButtonOn: self 
				label: #connectButtonLabel
				state: #connected 
				action: #connectToggle 
				offColor: IRCGUIHelper buttonColor
				onColor: Color paleGreen
				balloonText: 'Connect/Disconnect IRC server'
				name: 'BtnConnect'.
	self addDependent: button.
	^button