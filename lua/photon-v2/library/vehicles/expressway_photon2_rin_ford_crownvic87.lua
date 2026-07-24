if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria LR Highway Dept."
VEHICLE.Vehicle		= "87ltd_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Expressway Corp."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
     {
		Category = "Livery",
		Options = {
			{
				Option = "Highway Dept.",
				SubMaterials = {
					{ Id = 7, Material = "rin/expressway/crownvic87/expressway" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Code3 XL Mini",
				Components = {
				    {
						Component = "code3_xl_mini",
						Position = Vector( 0, -14.5, 61 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						States = { [1] = "A",
						           [2] = "A",
								   [3] = "A",
								   [4] = "A",
								   [5] = "A",
								   [6] = "A",
								   [7] = "A",
								   [8] = "A",
					    },
						SubMaterials = {
							[12] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
				}
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
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 61.6),
						Angles = Angle( 0, 0, 1.5 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/expressway/props/plate_state",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
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
