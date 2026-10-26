if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2021 Dodge Durango LR Expressway Corp."
VEHICLE.Vehicle		= "21durango_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

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
		Category = "Spotlights",
		Options = {
			{
				Option = "Whelen PAR46",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 35, 64 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
				}
			}
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
						Component = "photon_standard_sgmdodur21",
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
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
						Position = Vector( 0, -22, 97 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1.02,
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
						Position = Vector( 0, -89, 89 ),
						Angles = Angle( 0, 90, 0 ),
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
		Category = "ALPR",
		Options = {
			{
				Option = "ALPR",
			    Props = {
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 39, -92.5, 90.7),
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
						Position = Vector( -39, -92.5, 90.7),
						Angles = Angle( 0, -56, 0 ),
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
		Category = "Grille Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@grille_ion",
						Component = "photon_whe_ion",
						Position = Vector( 15, 105, 45 ),
						Angles = Angle( 0, 0, 0 ),
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
						Position = Vector( 9, 105, 40.95 ),
						Angles = Angle( 0, 0, 0 ),
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
						Position = Vector( -15, 105, 45 ),
						Angles = Angle( 0, 0, 0 ),
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
						Position = Vector( -9, 105, 40.95 ),
						Angles = Angle( 0, 0, 0 ),
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
						Position = Vector( 28.5, -80, 94.7 ),
						Angles = Angle( 0, -90, 0 ),
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
						Position = Vector( -28.5, -80, 94.7 ),
						Angles = Angle( 0, 90, 0 ),
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
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -5, 84.5 ),
						Angles = Angle( 0, 0, -4 ),
						Scale = 1,
					},
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
							[1] = "rin/expressway/props/plate_excorp",
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
							[1] = "rin/expressway/props/plate_excorp",
						},
					},
				}
			}
		}
	},
}