local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_lw_expressway_arrowboard"
COMPONENT.Title = "LR Expressway LW Arrow Board"
COMPONENT.Author = "Rin Hoshizora"
COMPONENT.Credits = {
	Model = "LW",
	Code = "Rin Hoshizora"
}

COMPONENT.States = {
	[1] = "~A",
	[2] = "~A"
}

COMPONENT.Category = "Traffic"
COMPONENT.Model = "models/lonewolfie/arrow_mount.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width 	= 4.4,
			Height	= 4.4,
			Detail = PhotonMaterial.GenerateLightQuad("photon/sprites/sprite_generic").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/sprites/sprite_generic").MaterialName,
			Scale = 1.1,
			IntensityTransitions = true,
			IntensityGainFactor = 7,
			IntensityLossFactor = 3,
			DeactivationState = "~OFF"
		}
	}
}

COMPONENT.StateMap = "[2] 1 2 3 4 5 6"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 22, -0.6, 40 ), Angle( 0, 90, 0 ) },
	[2] = { "Light", Vector( 22, 7.6, 40 ), Angle( 0, 90, 0 ) },
	[3] = { "Light", Vector( 22, -9.1, 40  ), Angle( 0, 90, 0 ) },
	[4] = { "Light", Vector( 22, 15.3, 40 ), Angle( 0, 90, 0 ) },
	[5] = { "Light", Vector( 22, -17.9, 40 ), Angle( 0, 90, 0 ) },
	[6] = { "Light", Vector( 22, 23.7, 40 ), Angle( 0, 90, 0 ) },
	[7] = { "Light", Vector( 22, -26.8, 40 ), Angle( 0, 90, 0 ) },
	[8] = { "Light", Vector( 22, 19.8, 45.7 ), Angle( 0, 90, 0 ) },
	[9] = { "Light", Vector( 22, -22.2, 45.9 ), Angle( 0, 90, 0 ) },
	[10] = { "Light", Vector( 22, 21.2, 33.8 ), Angle( 0, 90, 0 ) },
	[11] = { "Light", Vector( 22, -22.6, 34.1 ), Angle( 0, 90, 0 ) },
	[12] = { "Light", Vector( 22, 14.6, 51.5 ), Angle( 0, 90, 0 ) },
	[13] = { "Light", Vector( 22, -16.7, 51.5 ), Angle( 0, 90, 0 ) },
	[14] = { "Light", Vector( 22, 16.4, 29.2 ), Angle( 0, 90, 0 ) },
	[15] = { "Light", Vector( 22, -16.7, 29 ), Angle( 0, 90, 0 ) },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[0] = "[~OFF] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
			[1] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
		},
		Sequences = {
			DEBUG = { 1 }
		}
	},
	Traffic = {
		Frames = {
			[0] = "[~OFF] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
			[1] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
			[2] = "7",
			[3] = "7 5",
			[4] = "7 5 3",
			[5] = "7 5 3 1",
			[6] = "7 5 3 1 2",
			[7] = "7 5 3 1 2 4",
			[8] = "7 5 3 1 2 4 6 8 10 12 14",
			[9] = "6",
			[10] = "6 4",
			[11] = "6 4 2",
			[12] = "6 4 2 1",
			[13] = "6 4 2 1 3",
			[14] = "6 4 2 1 3 5",
			[15] = "6 4 2 1 3 5 7 9 11 13 15",
			[16] = "1",
			[17] = "1 2 3",
			[18] = "1 1 2 3 4 5",
			[19] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
		},
		Sequences = {
			LEFT = sequence():Sequential( 2, 8 ):Stretch( 5 ):Hold( 12 ):Add( 0 ):Hold( 8 ),
			RIGHT = sequence():Sequential( 9, 15 ):Stretch( 5 ):Hold( 12 ):Add( 0 ):Hold( 8 ),
			CENOUT = sequence():Sequential( 16, 19 ):Stretch( 8 ):Hold( 12 ):Add( 0 ):Hold( 8 ),
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Directional"] = {
		["LEFT"] = { Traffic = "LEFT" },
		["RIGHT"] = { Traffic = "RIGHT" },
		["CENOUT"] = { Traffic = "CENOUT" }
	}
}

Photon2.RegisterComponent( COMPONENT )