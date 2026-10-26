if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 LR Expressway Corp."
VEHICLE.Vehicle		= "sm18frdf150supercab"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Expressway Corp.",
				SubMaterials = {
					{ Id = 0, Material = "rin/expressway/f150/expressway" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Legacy",
				Components = {
				    {
						Component = "photon_whe_liberty_ii_suv_expressway_works",
						Position = Vector( 0, -32.5, 107.5 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
				}
			},
		}
	},
	{
		Category = "Arrow Board",
		Options = {
			{
				Option = "Arrow Board",
				Components = {
				    {
						Component = "photon_lw_expressway_arrowboard",
						Position = Vector( -0.8, -59, 48),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/expressway/props/yellow"
						},
					},
				}
			},
		}
	},
	{
		Category = "Grille Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@grille_ion",
						Component = "photon_whe_ion_surface",
						Position = Vector( 14.5, 130, 44.55 ),
						Angles = Angle( -0.5, -8, 0 ),
						Scale = 0.9,
						States = { "A" },
						Segments = {
							LightEXP = {
								Frames = {
									[1] = "Light"
								},
								Sequences = {
									["STAGE3"] = sequence():TripleFlash( 1, 0 ):SetTiming( 1/20 ),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEXP = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( -14.5, 130, 44.55 ),
						Angles = Angle( 0.5, 8, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEXP = "STAGE3:180"
								}
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 57, 71 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1
					},
				},
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 1 },
					{ BodyGroup = "grille", Value = 2 },
					{ BodyGroup = "front bumper", Value = 2 },
					{ BodyGroup = "rear bumper", Value = 1 },
                    { BodyGroup = "door handles", Value = 2 },
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "interior trim", Value = 1 },
                    { BodyGroup = "towbar", Value = 1 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8.5, 38, 60 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/expressway/props/laptop_screen_expressway",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				Props = {
					{
						Model = "models/supermighty/props/backrack_lightbarmount.mdl",
						Position = Vector( -15, -32.4, 104.2 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/props/backrack_lightbarmount.mdl",
						Position = Vector( 15, -32.4, 104.2 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -131.2, 34 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 134, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 134.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -8, 92.5),
						Angles = Angle( 0, 0, -0.5 ),
						Scale = 1,
					},
					{
						Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
						Position = Vector( 0, -47, 67.4 ),
						Angles = Angle( -0.5, -90, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( -20, -65, 57.2 ),
						Angles = Angle( -0.5, -80, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( -20, -65, 59.2 ),
						Angles = Angle( -0.5, 95, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( -20, -65, 61.2 ),
						Angles = Angle( -0.5, 88, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( -20, -65, 63.2 ),
						Angles = Angle( -0.5, 92, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10.5, 46.5, 85 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}