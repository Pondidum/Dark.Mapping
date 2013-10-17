local addon, ns = ...


local model = {

	new = function()

		local this = {}

		this.map = Minimap
		this.header = MinimapZoneTextButton
		this.headerText = MinimapZoneText
		this.border = MinimapBorderTop
		this.background = MinimapBackdrop

		this.buttons = {}
		this.buttons.worldMap = MiniMapWorldMapButton
		this.buttons.zoomIn = MinimapZoomIn
		this.buttons.zoomOut = MinimapZoomOut
		this.buttons.tracking = MiniMapTracking
		this.buttons.recording = MiniMapRecordingButton

		local clock = TimeManagerClockButton
		local clockBorder, clockText, clockAlarmTexture = clock:GetRegions()

		this.clock = {
			button = clock,
			border = clockBorder,
			text = clockText,
			alarm = clockAlarmTexture,
		}

		this.icons = {}
		this.icons.instanceDifficulty = MiniMapInstanceDifficulty
		this.icons.guildDifficulty = GuildInstanceDifficulty
		this.icons.challengeMode = MiniMapChallengeMode
		this.icons.mail = MiniMapMailFrame

		return this

	end,

}

ns.model = model
