if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford F550 LR Expressway Corp. Crew"
VEHICLE.Vehicle		= "f550_crew_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Expressway Corp.",
				SubMaterials = {
					{ Id = 13, Material = "rin/expressway/f550/expressway_crew" },
					{ Id = 18, Material = "sentry/13caprice/black" },
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
						Component = "photon_whe_legacy_54_expressway",
						Position = Vector( 0, 42, 87.6 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.985,
						BodyGroups = {
							["Takedown"] = 1,
							["Alley"] = 1,
							["Clamps"] = 2,
							["Gels"] = 1,
						},
						SubMaterials = {
							[3] = "rin/expressway/props/legacy"
						},
					},
				}
			},
		}
	},
	{
		Category = "Front Lights",
		Options = {
			{
				Option = "OSS LAF150",
				Components = {
					{
						Component = "oss_laf150_expressway",
						Position = Vector( -49, 147, 36.65 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 20, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "oss_laf150_expressway",
						Position = Vector( 49, 147, 36.65  ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, -20, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
				}
			},
		}
	},
	{
		Category = "Rear Lights",
		Options = {
			{
				Option = "OSS LAF150",
				Components = {
					{
						Component = "oss_laf150_expressway",
						Position = Vector( -52, -132, 71.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "oss_laf150_expressway",
						Position = Vector( 52, -132, 71.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
                    {
						Component = "oss_laf150_expressway",
						Position = Vector( -37, -132, 122.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "oss_laf150_expressway",
						Position = Vector( 37, -132, 122.7 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
                        Phase = 180,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
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
						Position = Vector( -39, 77, 67 ),
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
						Position = Vector( 2, 45, 53 ),
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
						Position = Vector( -42, -132.7, 26 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -18.3, 157.5, 33.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -60, 121.8),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
                }
			}
		}
	},
}