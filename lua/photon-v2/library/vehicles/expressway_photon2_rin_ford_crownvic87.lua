if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria LR Expressway Corp."
VEHICLE.Vehicle		= "87ltd_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
     {
		Category = "Livery",
		Options = {
			{
				Option = "Highway Dept.",
				SubMaterials = {
					{ Id = 7, Material = "rin/expressway/crownvic87/expressway" },
					{ Id = 15, Material = "rin/expressway/props/yellow" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AJS-12",
				Components = {
					{
                        Component = "photon_patlite_ajs12_lr_expressway",
                        Position = Vector( 0, -15, 67 ),
                        Angles = Angle( 0, -90, 0 ),
                        Scale = 1.2,
						Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -4,
                        },
						SubMaterials = {
							[2] = "rin/expressway/props/patlite_ajs_yb",
                            [13] = "rin/expressway/props/yellow",
                            [14] = "rin/expressway/props/yellow",
						},
                    },
					{
						Component = "photon_whe_500_lrpd",
						Position = Vector( 0, -24, 61.5 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -15, -25, 63.3),
						Angles = Angle( 0, 0, 270 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 15, -25, 63.3),
						Angles = Angle( 0, 0, 270 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},

		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 102, 22.5 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						Siren = "pa300_2",
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								}
							}
						},
					},
				}
			}
		}
	},
    {
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 61.6),
						Angles = Angle( 0, 0, 1.5 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
				}
			}
		}
	},
}
