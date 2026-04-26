if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline LR Expressway Corp."
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Expressway Service",
				SubMaterials = {
					{ Id = 21, Material = "rin/expressway/econoline92/expressway" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                    { Id = 5, Material = "rin/expressway/props/yellow" },
				},
			},
		}
	},
    {
		Category = "Lightbars",
		Options = {
            {
				Option = "Patlite AJS-12",
				Components = {
					{
                        Component = "patlite_ajs12",
                        Position = Vector( 0, -125, 95.2 ),
                        Angles = Angle( 4, -90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -1.5,
                        },
						SubMaterials = {
							[2] = "sentry/props/koitoflasher/glass_amber",
                            [13] = "rin/expressway/props/yellow",
                            [14] = "rin/expressway/props/yellow",
						},
                    },
                    {
                        Component = "patlite_ajs12",
                        Position = Vector( 0, 10, 96.3 ),
                        Angles = Angle( 1.5, 90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -1.5,
                        },
						SubMaterials = {
							[2] = "sentry/props/koitoflasher/glass_amber",
                            [13] = "rin/expressway/props/yellow",
                            [14] = "rin/expressway/props/yellow",
						},
                    },
				}
			},

		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 55, 64.1),
						Angles = Angle( -2, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -50, 91.6 ),
						Angles = Angle( 0, 0, 0.2 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
				}
			}
		}
	},
}