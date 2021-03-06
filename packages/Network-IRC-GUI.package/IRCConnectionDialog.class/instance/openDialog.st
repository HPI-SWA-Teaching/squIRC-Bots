dialog creation
openDialog
	"open a dialogue for making new connections"
	| dialogue swappingControl configurationPaneName |
	configurationPaneName := 'Current Configuration'.
	dialogue := IRCSystemWindow new.
	dialogue model: self.
	dialogue name: 'IRCDlgCon'.
	swappingControl := self buildSwapper.
	self
		addPane: self buildConfigurationPane
		toSwapper: swappingControl
		paneName: configurationPaneName
		default: true.
	self
		addPane: self buildOptionsPane
		toSwapper: swappingControl
		paneName: 'Current Options'
		default: false.
	self
		addPane: self buildProfilesPane
		toSwapper: swappingControl
		paneName: 'Profiles'
		default: false.
	dialogue
		addMorph: swappingControl
		frame: (0 @ 0 extent: 1 @ 1).
	swappingControl showPaneNamed: configurationPaneName.
	dialogue setLabel: 'setup for IRC cllient'.
	dialogue openInWorld