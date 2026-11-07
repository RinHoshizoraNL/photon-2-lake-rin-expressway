if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria LR Expressway Corp."
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
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
						Component = "photon_standard_cvpi98_4bulb",
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
		Category = "Lightbar",
		Options = {
			{
				Option = "Patlite AXS12 + Riser",
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
						Component = "photon_patlite_axs12_lr_expressway",
						Position = Vector( 1, 0, 3.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
						Parent = "@riser",
						FollowBone = 1,
						Options = {
                            FeetWidthOffset = -2,
                            FeetTilt = 1.5,
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
		Category = "Front Flashers",
		Options = {
			{
				Option = "Koito Flashers",
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 11, 115.2, 27.5 ),
						Angles = Angle( 0, -5, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {Sprites = "Rapid"},
								["MODE3"] = {Sprites = "Rapid"},
							}
						}
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -11, 115.2, 27.5 ),
						Angles = Angle( 0, 5, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {Sprites = "Rapid"},
								["MODE3"] = {Sprites = "Rapid"},
							}
						}
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
						Component = "koito_flasher_lrpd",
						Position = Vector( 18.5, -68, 56 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
						BodyGroups = {
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {Sprites = "Rapid"},
								["MODE3"] = {Sprites = "Rapid"},
							}
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -18.5, -68, 56 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						BodyGroups = {
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {Sprites = "Rapid"},
								["MODE3"] = {Sprites = "Rapid"},
							}
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				},
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 1 },
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Whelen 295HFSA6",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 100, 29 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						Siren = "whelen_295hfsa6",
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
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "doortrim", Value = 5 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
                    { BodyGroup = "4bulb_tails", Value = 1 },
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
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
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
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
				}
			}
		}
	},
}