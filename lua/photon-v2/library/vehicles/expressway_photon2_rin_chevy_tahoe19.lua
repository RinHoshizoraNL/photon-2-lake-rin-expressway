if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe LR Expressway Corp."
VEHICLE.Vehicle		= "19tahoe_sgm"
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
					{ Id = 21, Material = "rin/expressway/tahoe19/expressway"}
				},
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 40.5, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
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
						Position = Vector( 39, -94, 93.2),
						Angles = Angle( 0, 240, 0 ),
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
						Position = Vector( -39, -94, 93.2),
						Angles = Angle( 0, -60, 0 ),
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
		Category = "Trim Package",
		Options = {
			{
				Option = "Civilian A",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 2 },
				},
			},
			{
				Option = "Civilian B",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 5 },
				},
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
						Component = "photon_whe_liberty_ii_suv_expressway",
						Position = Vector( 0, -24, 100 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.03,
					},
				}
			},
		}
	},
	{
		Category = "Roof box thing",
		Options = {
			{
				Option = "idk what to call this",
				Components = {
				    {
						Component = "photon_expressway_roof_thingy",
						Position = Vector( 0, -90, 91.5 ),
						Angles = Angle( -0.5, 90, 0 ),
						Scale = 1,
						Bones = {
							["bone_flu"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 90 ), 1 },
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
						Component = "photon_whe_ion",
						Position = Vector( 13.3, 116.5, 47.25 ),
						Angles = Angle( -1, -8, 0 ),
						Scale = 0.9,
						States = { "B" },
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
								["MODE2"] = {
									LightEXP = "STAGE3"
								},
								["MODE3"] = {
									LightEXP = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( 12.6, 116.5, 40.95 ),
						Angles = Angle( -2, -8, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightEXP = "STAGE3:180"
								},
								["MODE3"] = {
									LightEXP = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( -13.3, 116.5, 47.25 ),
						Angles = Angle( 1, 8, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightEXP = "STAGE3:180"
								},
								["MODE3"] = {
									LightEXP = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( -12.6, 116.5, 40.95 ),
						Angles = Angle( 2, 8, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightEXP = "STAGE3"
								},
								["MODE3"] = {
									LightEXP = "STAGE3"
								}
							},
						}
					},
                }
			},
		}
	},
	{
		Category = "Side Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@side_ion",
						Component = "photon_whe_ion_surface_bracket",
						Position = Vector( 28.5, -80, 97.3 ),
						Angles = Angle( 0.5, -90, 0 ),
						Scale = 0.9,
						States = { "B" },
						Segments = {
							LightSide = {
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
								["MODE2"] = {
									LightSide = "STAGE3:180"
								},
								["MODE3"] = {
									LightSide = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@side_ion",
						Position = Vector( -28.5, -80, 97.3 ),
						Angles = Angle( -0.5, 90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightSide = "STAGE3"
								},
								["MODE3"] = {
									LightSide = "STAGE3"
								}
							},
						}
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
						Component = "photon_whe_ion_surface",
						Position = Vector( 9, -123, 47 ),
						Angles = Angle( 90, 180, 0 ),
						Scale = 0.9,
						States = { "B" },
						Segments = {
							LightRear = {
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
								["MODE2"] = {
									LightRear = "STAGE3"
								},
								["MODE3"] = {
									LightRear = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@rear_ion",
						Position = Vector( -9, -123, 47 ),
						Angles = Angle( 90, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									LightRear = "STAGE3:180"
								},
								["MODE3"] = {
									LightRear = "STAGE3:180"
								}
							},
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
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "keychain", Value = 0 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -5, 88.2 ),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 28, 80.5 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 18.05, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.8, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.35, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 27.7, 49 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/japanese_outer_mirror_right.mdl",
						Position = Vector( 51, 34.5, 70 ),
						Angles = Angle( 0, 265, 5 ),
						Scale = .9
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.1, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123.5, 22.1 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
				}
			}
		}
	},
}