if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria LR Expressway Corp."
VEHICLE.Vehicle		= "cvpi_hd_sgm"
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
					{ Id = 3, Material = "rin/expressway/crownvic10/expressway" }
				},
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Name = "@standard",
						Component = "photon_standard_cvpi10",
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {},
							}
						}
					},
				}
			}
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
						Siren = "whelen_295hfsa6"
					},
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Koito LED110 + Riser",
				Components = {
					{
						Name = "@riser",
						Component = "japan_riser",
						Position = Vector( 0, -13, 71 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[1] = "rin/expressway/props/yellow"
						},
					},
					{
						Component = "patlite_axs12",
						Position = Vector( 0, 0, 3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.95,
						Parent = "@riser",
						FollowBone = 1,
						States = {
							[1] = "A",
							[2] = "B",
							[3] = "B",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 0,
                            FeetTilt = 0,
                        },
						SubMaterials = {
							[5] = "rin/expressway/props/yellow",
							[12] = "rin/expressway/props/patlite_axs_yb"
						},
					},
				}
			}
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
			{
				Option = "Steelies missing center caps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 2 },
				},
			},
		}
	},
	{
		Category = "Rain Guards",
		Options = {
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
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
						Name = "@pushbar_laf150",  --LEFT FRONT FLASHER
						Component = "oss_laf150_lrpd",
						Position = Vector( -10, 119.5, 26.8),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 1,
						},
						Angles = Angle( 0, 4, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Inherit = "@pushbar_laf150", --RIGHT FRONT FLASHER
						Position = Vector( 10, 119.5, 26.8 ),
						Angles = Angle( 0, -4, 0 ),
						Phase = 180,
					},
				}
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Components = {
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -21, -69, 55  ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 21, -69, 55  ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Phase = 180,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_500_lrpd",
						Position = Vector( 0, -69, 51 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -68, 45),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -68, 45),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "doortrim", Value = 5 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 13.5, 40 ),
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
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 10, 26.85 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 12.75, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 7.4, 26.2 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 15, 62 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 0, -67, 62.7 ),
						Angles = Angle( 8, 90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/japanese_outer_mirror_right.mdl",
						Position = Vector( 45, 23, 52.2 ),
						Angles = Angle( 0, 270, 5 ),
						Scale = .9
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -40, 68.3),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
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