if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1991 Chevrolet Caprice LR Expressway Corp."
VEHICLE.Vehicle		= "91caprice_sgm"
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
					{ Id = 20, Material = "rin/expressway/caprice91/expressway" },
					{ Id = 16, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/lrpd2/caprice95/dash_blue" }
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
						Component = "photon_standard_chevcap91",
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
				Option = "Patlite AJS-12 + Riser",
				Components = {
					{
						Name = "@riser",
						Component = "japan_riser",
						Position = Vector( 0, -16, 64.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/expressway/props/yellow"
						},
					},
					{
						Component = "photon_patlite_ajs12_lr_expressway",
						Position = Vector( 0, 0, 6.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.97,
						Parent = "@riser",
						FollowBone = 1,
						Options = {
                            FeetWidthOffset = 0,
                            FeetTilt = 0,
                        },
						SubMaterials = {
							[2] = "rin/expressway/props/patlite_ajs_yb",
                            [13] = "rin/expressway/props/yellow",
                            [14] = "rin/expressway/props/yellow",
						},
					},
				}
			}
		}
	},
    {
		Category = "Grille",
		Options = {
			{
				Option = "Grille",
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 11.3, 110.7, 22 ),
						Angles = Angle( 0, -8, 0 ),
						Scale = 0.9,
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
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -11.3, 110.7, 22 ),
						Angles = Angle( 0, 8, 0 ),
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
			}
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 18.5, -68, 48 ),
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
						Position = Vector( -18.5, -68, 48 ),
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
						Position = Vector( 0, -69, 43 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -68, 37),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -68, 37),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
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
						Position = Vector( 4, 104, 22 ),
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37.5, 30, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
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
						Position = Vector( 1.5, 29, 41.9 ),
						Angles = Angle( 0, 270, -0.5 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 27, 23 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.3,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 60.6),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/japanese_outer_mirror_right.mdl",
						Position = Vector( 44.5, 21.5, 43.2 ),
						Angles = Angle( 0, 270, 5 ),
						Scale = .9
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
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
