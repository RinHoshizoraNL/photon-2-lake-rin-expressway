if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford F550 LR Expressway Corp. Utility"
VEHICLE.Vehicle		= "f550_utility_sm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

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
						Component = "photon_whe_legacy_54_expressway",
						Position = Vector( 0, 29, 93.3 ),
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
						Position = Vector( -20, 159.6, 38.5 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 1,
						},
						Angles = Angle( 0, 5, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "oss_laf150_expressway",
						Position = Vector( 20, 159.6, 38.5  ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 1,
						},
						Angles = Angle( 0, -5, 0 ),
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
		Category = "Brace Lights",
		Options = {
			{
				Option = "OSS LAF150",
				Components = {
					{
						Component = "oss_laf150_expressway",
						Position = Vector( -42, -150.8, 99 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 180, 180, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[1] = "sentry/props/koitoflasher/glass_amber",
							[2] = "sentry/props/koitoflasher/glass_amber"
						},
					},
					{
						Component = "oss_laf150_expressway",
						Position = Vector( 42, -150.8, 99 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 180, 180, 0 ),
						Scale = 0.9,
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
							[1] = "rin/expressway/props/plate_state",
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
							[1] = "rin/expressway/props/plate_state",
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
						Model = "models/rin/industrial/equipment/portable_generator.mdl",
						Position = Vector(-11, -80, 44 ),
						Angles = Angle( 0, 190, 0 ),
						Scale = 1,
					},
					{
						Model = "models/rin/industrial/equipment/welder.mdl",
						Position = Vector(-15, -41, 44 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
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