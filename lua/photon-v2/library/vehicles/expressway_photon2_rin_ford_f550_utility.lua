if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford F550 LR Expressway Corp. Utility"
VEHICLE.Vehicle		= "f550_utility_sm"
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
					{ Id = 2, Material = "rin/expressway/f550/expressway_utility" },
                    { Id = 23, Material = "rin/expressway/props/yellow" },
				},
                BodyGroups = {
					{ BodyGroup = "Bracing", Value = 1 },
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
						Position = Vector( 0, 28.5, 95 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
				}
			},
		}
	},
	{
		Category = "Rear Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@rear_ion",
						Component = "photon_whe_ion_surface_bracket",
						Position = Vector( 42, -148.5, 100.7 ),
						Angles = Angle( 0, 0, 180 ),
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
						Inherit = "@rear_ion",
						Position = Vector( -42, -148.5, 100.7 ),
						Angles = Angle( 0, 0, 180 ),
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
						Position = Vector( -39, 77, 74 ),
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
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 2, 45, 58.5 ),
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -35, -154.4, 36 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 159, 30 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 159.7, 30 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 8, 92.75),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
                    {
						Model = "models/props_c17/metalladder001.mdl",
						Position = Vector( -31, -160, 106.2 ),
						Angles = Angle( 90, 90, 0 ),
						Scale = 0.77
					},
                    {
						Model = "models/props_c17/metalladder001.mdl",
						Position = Vector( -31, -98.5, 106.2 ),
						Angles = Angle( 90, 90, 0 ),
						Scale = 0.77
					},
					{
						Model = "models/props_junk/TrashBin01a.mdl",
						Position = Vector( 19, -38, 64 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( 19, -62, 58.8 ),
						Angles = Angle( 0, 50, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( 19, -62, 61.7 ),
						Angles = Angle( 0, -20, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( 19, -62, 64 ),
						Angles = Angle( 0, 5, 0 ),
						Scale = 1
					},
					{
						Model = "models/props_junk/TrafficCone001a.mdl",
						Position = Vector( 17, -130, 48.8 ),
						Angles = Angle( 0, -20, 103 ),
						Scale = 1
					},
				}
			}
		}
	},
}