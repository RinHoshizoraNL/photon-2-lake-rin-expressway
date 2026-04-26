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
					{ Id = 20, Material = "rin/expressway/caprice95/expressway" },
					{ Id = 16, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
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
						Position = Vector( 0, -16, 64.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/expressway/props/yellow"
						},
					},
					{
						Component = "patlite_ajs12",
						Position = Vector( 0, 0, 6.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.97,
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
				Props = {
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 4.5, 104, 22.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 11.3, 110.7, 22 ),
						Angles = Angle( 0, -8, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
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
						Position = Vector( 15, -80, 44 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -15, -80, 44 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				Bones = {
					{ Bone = "fl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				},
				Props = {
					{
						Model = "models/rin/95caprice/steelie/rin_steelies.mdl",
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
							},
						},
					}	
				},
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
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
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
				}
			}
		}
	},
}
