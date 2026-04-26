if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2021 Dodge Durango LR Expressway Corp."
VEHICLE.Vehicle		= "21durango_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[17] = "photon/common/blank"
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				Props = {
					{
						Name = "@durango_hull",
						Model = "models/schmal/dodur21_hull.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/expressway/durango/expressway",
						}
					}
				}
			},
		}
	},
    {
		Category = "Siren",
		Options = {
			{
				Option = "Whelen Gamma",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Position = Vector(0, 120, 27.1),
						Angles = Angle(0, -90, 0),
						Scale = 0,
						Siren = "whelen_gamma"
					},
				}
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
						Component = "photon_whe_legacy_54_expressway_alt",
						Position = Vector( 0, -14.5, 85.2 ),
						Angles = Angle( 2.5, 90, 0 ),
						Scale = 0.965,
						BodyGroups = {
							["Takedown"] = 1,
							["Alley"] = 1,
							["Clamps"] = 2,
							["Gels"] = 0,
						},
					},
				}
			},
		}
	},
    {
		Category = "ALPR",
		Options = {
			{
				Option = "ALPR",
			    Props = {
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 29, -11.5, 90.3),
						Angles = Angle( -2.5, 235, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 4,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( -29, -11.5, 90.3),
						Angles = Angle( -2.5, -55, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 4,
							["lens cover"] = 1,
						},
					},
				}
			},
		}
	},
	{
		Category = "Grille",
		Options = {
			{
				Option = "Grille",
				Components = {
				    {
						Component = "photon_patlite_lp5_expressway_alt",
						Position = Vector( 10, 105, 44 ),
						Angles = Angle( 0, -8, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_expressway_alt",
						Position = Vector( -10, 105, 44 ),
						Angles = Angle( 0, 8, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_expressway_alt",
						Position = Vector( 15, 105, 41 ),
						Angles = Angle( -0, -8, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_expressway_alt",
						Position = Vector( -15, 105, 41 ),
						Angles = Angle( 0, 8, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				}
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Alloys",
				Props = {
					{
						Model = "models/schmal/dodur21_wheels.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Bones = {
							["wheel_fl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["wheel_fr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["wheel_rl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["wheel_rr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
								-- Follow = { Bone = "door_fl" }
							},
						},
						AutoWheels = { Offset = Vector( -2.7, 0, 0 ) }
					}
				},
				SubMaterials = {
					[20] = "photon/common/blank"
				}
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
						Position = Vector( 7, 15.5, 50 ),
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
						Model = "models/sentry/props/japanese_outer_mirror_right.mdl",
						Position = Vector( 51, 27.5, 67.9 ),
						Angles = Angle( 0, 265, 5 ),
						Scale = .9
					},
                    {
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10, 22, 77 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 11.3, 37 ),
						Angles = Angle( -65, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 1.5, 29, 62.2 ),
						Angles = Angle( 4, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 7.5, 35.6 ),
						Angles = Angle( 0, 0, -65 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -129, 49.7 ),
						Angles = Angle( -25, 270, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 116, 29 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 116.7, 29 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
				}
			}
		}
	},
}