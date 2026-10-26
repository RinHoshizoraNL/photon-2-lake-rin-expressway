local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_expressway_roof_thingy"
COMPONENT.Title = "LR Expresway fake Nexco roof thingy idk"
COMPONENT.Author = "Rin Hoshizora"
COMPONENT.Credits = {
	Model = "W4",
	Code = "Rin Hoshizora"
}

COMPONENT.SubMaterials = {
	[1] = "rin/expressway/props/yellow",
}

COMPONENT.States = {
	[1] = "~A",
	[2] = "~A"
}

COMPONENT.Category = "Traffic"
COMPONENT.Model = "models/w4nou/flu_police.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width 	= 7.5,
			Height	= 7.5,
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
	[1] = { "Light", Vector( -12, -4.5, 0 ), Angle( 0, 90, 0 ) },
	[2] = { "Light", Vector( -12, 4.5, 0 ), Angle( 0, 90, 0 ) },
	[3] = { "Light", Vector( -12, -13.4, 0  ), Angle( 0, 90, 0 ) },
	[4] = { "Light", Vector( -12, 13.4, 0 ), Angle( 0, 90, 0 ) },
	[5] = { "Light", Vector( -12, -22.5, 0 ), Angle( 0, 90, 0 ) },
	[6] = { "Light", Vector( -12, 22.5, 0 ), Angle( 0, 90, 0 ) },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[0] = "[~OFF] 1 2 3 4 5 6",
			[1] = "1 2 3 4 5 6",
		},
		Sequences = {
			DEBUG = { 1 }
		}
	},
	Response = {
		Frames = {
			[0] = "[~OFF] 1 2 3 4 5 6",
			[1] = "1 2",
			[2] = "3 4 5 6",
		},
		Sequences = {
			RESPONSE = sequence():Alternate( 1, 2, 8 ),
		}
	},
	Traffic = {
		Frames = {
			[0] = "[~OFF] 1 2 3 4 5 6",
			[1] = "1 2 3 4 5 6",
			[2] = "1 2",
			[3] = "1 2 3 4",
			[4] = "1 2 3 4 5 6",
			[5] = "3 4 5 6",
			[6] = "5 6",
			[7] = "5",
			[8] = "5 3",
			[9] = "5 3 1",
			[10] = "5 3 1 2",
			[11] = "5 3 1 2 4",
			[12] = "5 3 1 2 4 6",
			[13] = "3 1 2 4 6",
			[14] = "1 2 4 6",
			[15] = "2 4 6",
			[16] = "4 6",
			[17] = "6",
		},
		Sequences = {
			LEFT = sequence():Sequential( 7, 17 ):Stretch( 4 ):Hold( 4 ):Add( 0 ):Hold( 4 ),
			RIGHT = sequence():Sequential( 17, 7 ):Stretch( 4 ):Hold( 4 ):Add( 0 ):Hold( 4 ),
			CENOUT = sequence():Sequential( 2, 6 ):Stretch( 5 ):Hold( 5 ):Add( 0 ):Hold( 5 )
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Response = "RESPONSE",
		},
		["MODE3"] = {
			Response = "RESPONSE",
		},
	},
	["Emergency.Directional"] = {
		["LEFT"] = { Traffic = "LEFT" },
		["RIGHT"] = { Traffic = "RIGHT" },
		["CENOUT"] = { Traffic = "CENOUT" }
	}
}

Photon2.RegisterComponent( COMPONENT )