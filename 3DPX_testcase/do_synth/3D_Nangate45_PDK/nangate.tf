
Technology	{
		name				= ""
		date				= "Sep 27 2019"
		dielectric			= 3.45e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 2000
		gridResolution			= 10
		unitVoltageName			= "V"
		voltagePrecision		= 1000000
		unitCurrentName			= "mA"
		currentPrecision		= 1000000
		unitPowerName			= "mw"
		powerPrecision			= 1000000
		unitResistanceName		= "kohm"
		resistancePrecision		= 1000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 1000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		47 {
		name				= "47"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 255
		blueIntensity			= 255
}

Tile		"unit" {
		width				= 0.19
		height				= 1.4
}

Layer		"poly_bottom_tier" {
		layerNumber			= 1
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"active_bottom_tier" {
		layerNumber			= 2
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"metal1_bottom_tier" {
		layerNumber			= 3
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.065
		sameNetMinSpacing		= 0.065
		unitMinResistance		= 0.00038
		unitNomResistance		= 0.00038
		unitMaxResistance		= 0.00038
		unitMinCapacitance		= 0.000859
		unitNomCapacitance		= 0.000859
		unitMaxCapacitance		= 0.000859
		unitMinHeightFromSub		= 0.37
		unitNomHeightFromSub		= 0.37
		unitMaxHeightFromSub		= 0.37
		unitMinThickness		= 0.13
		unitNomThickness		= 0.13
		unitMaxThickness		= 0.13
}

Layer		"via1_bottom_tier" {
		layerNumber			= 4
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.08
		sameNetMinSpacing		= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal2_bottom_tier" {
		layerNumber			= 5
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.19
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		sameNetMinSpacing		= 0.07
		unitMinResistance		= 0.00025
		unitNomResistance		= 0.00025
		unitMaxResistance		= 0.00025
		unitMinCapacitance		= 0.00076
		unitNomCapacitance		= 0.00076
		unitMaxCapacitance		= 0.00076
		unitMinHeightFromSub		= 0.62
		unitNomHeightFromSub		= 0.62
		unitMaxHeightFromSub		= 0.62
		unitMinThickness		= 0.14
		unitNomThickness		= 0.14
		unitMaxThickness		= 0.14
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.0905,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 6
		fatTblParallelLength		= (0,0.3005,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,0.07,
						   0.07,0.09,0.09,0.09,0.09,0.09,
						   0.07,0.09,0.27,0.27,0.27,0.27,
						   0.07,0.09,0.27,0.5,0.5,0.5,
						   0.07,0.09,0.27,0.5,0.9,0.9,
						   0.07,0.09,0.27,0.5,0.9,1.5)
}

Layer		"via2_bottom_tier" {
		layerNumber			= 6
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.09
		sameNetMinSpacing		= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal3_bottom_tier" {
		layerNumber			= 7
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "wave"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		sameNetMinSpacing		= 0.07
		unitMinResistance		= 0.00025
		unitNomResistance		= 0.00025
		unitMaxResistance		= 0.00025
		unitMinCapacitance		= 0.000747
		unitNomCapacitance		= 0.000747
		unitMaxCapacitance		= 0.000747
		unitMinHeightFromSub		= 0.88
		unitNomHeightFromSub		= 0.88
		unitMaxHeightFromSub		= 0.88
		unitMinThickness		= 0.14
		unitNomThickness		= 0.14
		unitMaxThickness		= 0.14
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.0905,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 6
		fatTblParallelLength		= (0,0.3005,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,0.07,
						   0.07,0.09,0.09,0.09,0.09,0.09,
						   0.07,0.09,0.27,0.27,0.27,0.27,
						   0.07,0.09,0.27,0.5,0.5,0.5,
						   0.07,0.09,0.27,0.5,0.9,0.9,
						   0.07,0.09,0.27,0.5,0.9,1.5)
}

Layer		"via3_bottom_tier" {
		layerNumber			= 8
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.09
		sameNetMinSpacing		= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal4_bottom_tier" {
		layerNumber			= 9
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
		sameNetMinSpacing		= 0.14
		unitMinResistance		= 0.00021
		unitNomResistance		= 0.00021
		unitMaxResistance		= 0.00021
		unitMinCapacitance		= 0.000462
		unitNomCapacitance		= 0.000462
		unitMaxCapacitance		= 0.000462
		unitMinHeightFromSub		= 1.14
		unitNomHeightFromSub		= 1.14
		unitMaxHeightFromSub		= 1.14
		unitMinThickness		= 0.28
		unitNomThickness		= 0.28
		unitMaxThickness		= 0.28
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 5
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,
						   0.14,0.27,0.27,0.27,0.27,
						   0.14,0.27,0.5,0.5,0.5,
						   0.14,0.27,0.5,0.9,0.9,
						   0.14,0.27,0.5,0.9,1.5)
}

Layer		"via4_bottom_tier" {
		layerNumber			= 10
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.16
		sameNetMinSpacing		= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

Layer		"metal5_bottom_tier" {
		layerNumber			= 11
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
		sameNetMinSpacing		= 0.14
		unitMinResistance		= 0.00021
		unitNomResistance		= 0.00021
		unitMaxResistance		= 0.00021
		unitMinCapacitance		= 4.8e-05
		unitNomCapacitance		= 4.8e-05
		unitMaxCapacitance		= 4.8e-05
		unitMinHeightFromSub		= 1.71
		unitNomHeightFromSub		= 1.71
		unitMaxHeightFromSub		= 1.71
		unitMinThickness		= 0.28
		unitNomThickness		= 0.28
		unitMaxThickness		= 0.28
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 5
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,
						   0.14,0.27,0.27,0.27,0.27,
						   0.14,0.27,0.5,0.5,0.5,
						   0.14,0.27,0.5,0.9,0.9,
						   0.14,0.27,0.5,0.9,1.5)
}

Layer		"via5_bottom_tier" {
		layerNumber			= 12
		maskName			= "via5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.16
		sameNetMinSpacing		= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

Layer		"metal6_bottom_tier" {
		layerNumber			= 13
		maskName			= "metal6"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
		sameNetMinSpacing		= 0.14
		unitMinResistance		= 0.00021
		unitNomResistance		= 0.00021
		unitMaxResistance		= 0.00021
		unitMinCapacitance		= 0.000351
		unitNomCapacitance		= 0.000351
		unitMaxCapacitance		= 0.000351
		unitMinHeightFromSub		= 2.28
		unitNomHeightFromSub		= 2.28
		unitMaxHeightFromSub		= 2.28
		unitMinThickness		= 0.28
		unitNomThickness		= 0.28
		unitMaxThickness		= 0.28
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 5
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,
						   0.14,0.27,0.27,0.27,0.27,
						   0.14,0.27,0.5,0.5,0.5,
						   0.14,0.27,0.5,0.9,0.9,
						   0.14,0.27,0.5,0.9,1.5)
}

Layer		"via6_bottom_tier" {
		layerNumber			= 14
		maskName			= "via6"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.16
		sameNetMinSpacing		= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

Layer		"metal7_bottom_tier" {
		layerNumber			= 15
		maskName			= "metal7"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.8
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.4
		sameNetMinSpacing		= 0.4
		unitMinResistance		= 7.5e-05
		unitNomResistance		= 7.5e-05
		unitMaxResistance		= 7.5e-05
		unitMinCapacitance		= 0.000171
		unitNomCapacitance		= 0.000171
		unitMaxCapacitance		= 0.000171
		unitMinHeightFromSub		= 2.85
		unitNomHeightFromSub		= 2.85
		unitMaxHeightFromSub		= 2.85
		unitMinThickness		= 0.8
		unitNomThickness		= 0.8
		unitMaxThickness		= 0.8
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 4
		fatTblParallelLength		= (0,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.4,0.4,0.4,0.4,
						   0.4,0.5,0.5,0.5,
						   0.4,0.5,0.9,0.9,
						   0.4,0.5,0.9,1.5)
}

Layer		"via7_bottom_tier" {
		layerNumber			= 16
		maskName			= "via7"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.44
		sameNetMinSpacing		= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

Layer		"metal8_bottom_tier" {
		layerNumber			= 17
		maskName			= "metal8"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "orange"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.8
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.4
		sameNetMinSpacing		= 0.4
		unitMinResistance		= 7.5e-05
		unitNomResistance		= 7.5e-05
		unitMaxResistance		= 7.5e-05
		unitMinCapacitance		= 0.000125
		unitNomCapacitance		= 0.000125
		unitMaxCapacitance		= 0.000125
		unitMinHeightFromSub		= 4.47
		unitNomHeightFromSub		= 4.47
		unitMaxHeightFromSub		= 4.47
		unitMinThickness		= 0.8
		unitNomThickness		= 0.8
		unitMaxThickness		= 0.8
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 4
		fatTblParallelLength		= (0,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.4,0.4,0.4,0.4,
						   0.4,0.5,0.5,0.5,
						   0.4,0.5,0.9,0.9,
						   0.4,0.5,0.9,1.5)
}

Layer		"via8_bottom_tier" {
		layerNumber			= 18
		maskName			= "via8"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.44
		sameNetMinSpacing		= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

Layer		"metal9_bottom_tier" {
		layerNumber			= 19
		maskName			= "metal9"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 1.6
		defaultWidth			= 0.8
		minWidth			= 0.8
		minSpacing			= 0.8
		sameNetMinSpacing		= 0.8
		unitMinResistance		= 3e-05
		unitNomResistance		= 3e-05
		unitMaxResistance		= 3e-05
		unitMinCapacitance		= 8.1e-05
		unitNomCapacitance		= 8.1e-05
		unitMaxCapacitance		= 8.1e-05
		unitMinHeightFromSub		= 6.09
		unitNomHeightFromSub		= 6.09
		unitMaxHeightFromSub		= 6.09
		unitMinThickness		= 2
		unitNomThickness		= 2
		unitMaxThickness		= 2
		fatTblDimension			= 3
		fatTblThreshold			= (0,0.9005,1.5005)
		fatTblParallelLengthDimension	= 3
		fatTblParallelLength		= (0,2.7005,4.0005)
		fatTblSpacing			= (0.8,0.8,0.8,
						   0.8,0.9,0.9,
						   0.8,0.9,1.5)
}

Layer		"via9_bottom_tier" {
		layerNumber			= 20
		maskName			= "via9"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.8
		minWidth			= 0.8
		minSpacing			= 0.88
		sameNetMinSpacing		= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

Layer		"metal10_bottom_tier" {
		layerNumber			= 21
		maskName			= "metal10"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 1.6
		defaultWidth			= 0.8
		minWidth			= 0.8
		minSpacing			= 0.8
		sameNetMinSpacing		= 0.8
		unitMinResistance		= 3e-05
		unitNomResistance		= 3e-05
		unitMaxResistance		= 3e-05
		unitMinCapacitance		= 6.1e-05
		unitNomCapacitance		= 6.1e-05
		unitMaxCapacitance		= 6.1e-05
		unitMinHeightFromSub		= 10.09
		unitNomHeightFromSub		= 10.09
		unitMaxHeightFromSub		= 10.09
		unitMinThickness		= 2
		unitNomThickness		= 2
		unitMaxThickness		= 2
		fatTblDimension			= 3
		fatTblThreshold			= (0,0.9005,1.5005)
		fatTblParallelLengthDimension	= 3
		fatTblParallelLength		= (0,2.7005,4.0005)
		fatTblSpacing			= (0.8,0.8,0.8,
						   0.8,0.9,0.9,
						   0.8,0.9,1.5)
}


Layer "OVERLAP_bottom_tier" {
		layerNumber			= 22
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"MIV" {
		layerNumber			= 23
		maskName			= "via10"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.8
		minWidth			= 0.8
		minSpacing			= 0.88
		sameNetMinSpacing		= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

Layer "OVERLAP_top_tier" {
		layerNumber			= 24
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"metal10_top_tier" {  
		layerNumber			= 25  
		maskName			= "metal11"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.84  
		defaultWidth			= 0.42  
		minWidth			= 0.42  
		minSpacing			= 0.42  
		sameNetMinSpacing		= 0.42  
		unitMinResistance		= 0.00007  
		unitNomResistance		= 0.00007  
		unitMaxResistance		= 0.00007  
		unitMinCapacitance		= 0.000117  
		unitNomCapacitance		= 0.000117  
		unitMaxCapacitance		= 0.000117  
		unitMinHeightFromSub		= 4.60  
		unitNomHeightFromSub		= 4.60  
		unitMaxHeightFromSub		= 4.60  
		unitMinThickness		= 0.84  
		unitNomThickness		= 0.84  
		unitMaxThickness		= 0.84  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.8105,1.5005,2.7005,4.5005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,2.7005,5.4005,8.1005,12.0005)  
		fatTblSpacing			= (0.42,0.42,0.42,0.42,0.42,  
						   0.42,0.81,0.81,0.81,0.81,  
						   0.42,0.81,1.5,1.5,1.5,  
						   0.42,0.81,1.5,2.7,2.7,  
						   0.42,0.81,1.5,2.7,4.5)  
}  

Layer		"via9_top_tier" {  
		layerNumber			= 26
		maskName			= "via11"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.42  
		minWidth			= 0.42  
		minSpacing			= 0.44  
		sameNetMinSpacing		= 0.44  
		unitMinResistance		= 0.001  
		unitNomResistance		= 0.001  
		unitMaxResistance		= 0.001  
}  

Layer		"metal9_top_tier" {  
		layerNumber			= 27
		maskName			= "metal12"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.56  
		defaultWidth			= 0.28  
		minWidth			= 0.28  
		minSpacing			= 0.28  
		sameNetMinSpacing		= 0.28  
		unitMinResistance		= 0.00014  
		unitNomResistance		= 0.00014  
		unitMaxResistance		= 0.00014  
		unitMinCapacitance		= 0.000234  
		unitNomCapacitance		= 0.000234  
		unitMaxCapacitance		= 0.000234  
		unitMinHeightFromSub		= 3.76  
		unitNomHeightFromSub		= 3.76  
		unitMaxHeightFromSub		= 3.76  
		unitMinThickness		= 0.56  
		unitNomThickness		= 0.56  
		unitMaxThickness		= 0.56  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.5405,1.0005,1.8005,3.0005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,1.8005,3.6005,5.4005,8.0005)  
		fatTblSpacing			= (0.28,0.28,0.28,0.28,0.28,  
						   0.28,0.54,0.54,0.54,0.54,  
						   0.28,0.54,1.0,1.0,1.0,  
						   0.28,0.54,1.0,1.8,1.8,  
						   0.28,0.54,1.0,1.8,3.0)  
}  

Layer		"via8_top_tier" {  
		layerNumber			= 28
		maskName			= "via12"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.28  
		minWidth			= 0.28  
		minSpacing			= 0.3  
		sameNetMinSpacing		= 0.3  
		unitMinResistance		= 0.0015  
		unitNomResistance		= 0.0015  
		unitMaxResistance		= 0.0015  
}  

Layer		"metal8_top_tier" {  
		layerNumber			= 29  
		maskName			= "metal13"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.40  
		defaultWidth			= 0.20  
		minWidth			= 0.20  
		minSpacing			= 0.20  
		sameNetMinSpacing		= 0.20  
		unitMinResistance		= 0.00028  
		unitNomResistance		= 0.00028  
		unitMaxResistance		= 0.00028  
		unitMinCapacitance		= 0.000351  
		unitNomCapacitance		= 0.000351  
		unitMaxCapacitance		= 0.000351  
		unitMinHeightFromSub		= 3.00  
		unitNomHeightFromSub		= 3.00  
		unitMaxHeightFromSub		= 3.00  
		unitMinThickness		= 0.40  
		unitNomThickness		= 0.40  
		unitMaxThickness		= 0.40  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.3855,0.8005,1.4005,2.4005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,1.4005,2.8005,4.2005,6.0005)  
		fatTblSpacing			= (0.20,0.20,0.20,0.20,0.20,  
						   0.20,0.38,0.38,0.38,0.38,  
						   0.20,0.38,0.80,0.80,0.80,  
						   0.20,0.38,0.80,1.40,1.40,  
						   0.20,0.38,0.80,1.40,2.40)  
}  

Layer		"via7_top_tier" {  
		layerNumber			= 30  
		maskName			= "via13"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.20  
		minWidth			= 0.20  
		minSpacing			= 0.22  
		sameNetMinSpacing		= 0.22  
		unitMinResistance		= 0.002  
		unitNomResistance		= 0.002  
		unitMaxResistance		= 0.002  
}  

Layer		"metal7_top_tier" {  
		layerNumber			= 31  
		maskName			= "metal14"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.28  
		defaultWidth			= 0.14  
		minWidth			= 0.14  
		minSpacing			= 0.14  
		sameNetMinSpacing		= 0.14  
		unitMinResistance		= 0.00056  
		unitNomResistance		= 0.00056  
		unitMaxResistance		= 0.00056  
		unitMinCapacitance		= 0.000468  
		unitNomCapacitance		= 0.000468  
		unitMaxCapacitance		= 0.000468  
		unitMinHeightFromSub		= 2.40  
		unitNomHeightFromSub		= 2.40  
		unitMaxHeightFromSub		= 2.40  
		unitMinThickness		= 0.28  
		unitNomThickness		= 0.28  
		unitMaxThickness		= 0.28  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.2705,0.6005,1.0005,1.8005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,1.0005,2.0005,3.0005,4.5005)  
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,  
						   0.14,0.27,0.27,0.27,0.27,  
						   0.14,0.27,0.60,0.60,0.60,  
						   0.14,0.27,0.60,1.00,1.00,  
						   0.14,0.27,0.60,1.00,1.80)  
}

Layer		"via6_top_tier" {  
		layerNumber			= 32  
		maskName			= "via14"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.14  
		minWidth			= 0.14  
		minSpacing			= 0.16  
		sameNetMinSpacing		= 0.16  
		unitMinResistance		= 0.003  
		unitNomResistance		= 0.003  
		unitMaxResistance		= 0.003  
}  

Layer		"metal6_top_tier" {  
		layerNumber			= 33  
		maskName			= "metal15"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.20  
		defaultWidth			= 0.10  
		minWidth			= 0.10  
		minSpacing			= 0.10  
		sameNetMinSpacing		= 0.10  
		unitMinResistance		= 0.00075  
		unitNomResistance		= 0.00075  
		unitMaxResistance		= 0.00075  
		unitMinCapacitance		= 0.000602  
		unitNomCapacitance		= 0.000602  
		unitMaxCapacitance		= 0.000602  
		unitMinHeightFromSub		= 1.90  
		unitNomHeightFromSub		= 1.90  
		unitMaxHeightFromSub		= 1.90  
		unitMinThickness		= 0.20  
		unitNomThickness		= 0.20  
		unitMaxThickness		= 0.20  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.2005,0.5005,0.9005,1.5005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)  
		fatTblSpacing			= (0.10,0.10,0.10,0.10,0.10,  
						   0.10,0.20,0.20,0.20,0.20,  
						   0.10,0.20,0.50,0.50,0.50,  
						   0.10,0.20,0.50,0.90,0.90,  
						   0.10,0.20,0.50,0.90,1.50)  
}  

Layer		"via5_top_tier" {  
		layerNumber			= 34  
		maskName			= "via15"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.10  
		minWidth			= 0.10  
		minSpacing			= 0.12  
		sameNetMinSpacing		= 0.12  
		unitMinResistance		= 0.004  
		unitNomResistance		= 0.004  
		unitMaxResistance		= 0.004  
}  

Layer		"metal5_top_tier" {  
		layerNumber			= 35  
		maskName			= "metal16"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.14  
		defaultWidth			= 0.07  
		minWidth			= 0.07  
		minSpacing			= 0.07  
		sameNetMinSpacing		= 0.07  
		unitMinResistance		= 0.0012  
		unitNomResistance		= 0.0012  
		unitMaxResistance		= 0.0012  
		unitMinCapacitance		= 0.000780  
		unitNomCapacitance		= 0.000780  
		unitMaxCapacitance		= 0.000780  
		unitMinHeightFromSub		= 1.40  
		unitNomHeightFromSub		= 1.40  
		unitMaxHeightFromSub		= 1.40  
		unitMinThickness		= 0.14  
		unitNomThickness		= 0.14  
		unitMaxThickness		= 0.14  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.1405,0.4005,0.7005,1.2005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,0.7005,1.4005,2.1005,3.5005)  
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,  
						   0.07,0.14,0.14,0.14,0.14,  
						   0.07,0.14,0.40,0.40,0.40,  
						   0.07,0.14,0.40,0.70,0.70,  
						   0.07,0.14,0.40,0.70,1.20)  
}

Layer		"via4_top_tier" {  
		layerNumber			= 36  
		maskName			= "via16"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.10  
		minWidth			= 0.10  
		minSpacing			= 0.12  
		sameNetMinSpacing		= 0.12  
		unitMinResistance		= 0.004  
		unitNomResistance		= 0.004  
		unitMaxResistance		= 0.004  
}  

Layer		"metal4_top_tier" {  
		layerNumber			= 37  
		maskName			= "metal17"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.14  
		defaultWidth			= 0.07  
		minWidth			= 0.07  
		minSpacing			= 0.07  
		sameNetMinSpacing		= 0.07  
		unitMinResistance		= 0.0012  
		unitNomResistance		= 0.0012  
		unitMaxResistance		= 0.0012  
		unitMinCapacitance		= 0.000780  
		unitNomCapacitance		= 0.000780  
		unitMaxCapacitance		= 0.000780  
		unitMinHeightFromSub		= 1.00  
		unitNomHeightFromSub		= 1.00  
		unitMaxHeightFromSub		= 1.00  
		unitMinThickness		= 0.14  
		unitNomThickness		= 0.14  
		unitMaxThickness		= 0.14  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.1405,0.4005,0.7005,1.2005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,0.7005,1.4005,2.1005,3.5005)  
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,  
						   0.07,0.14,0.14,0.14,0.14,  
						   0.07,0.14,0.40,0.40,0.40,  
						   0.07,0.14,0.40,0.70,0.70,  
						   0.07,0.14,0.40,0.70,1.20)  
}  

Layer		"via3_top_tier" {  
		layerNumber			= 38  
		maskName			= "via17"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "white"  
		lineStyle			= "solid"  
		pattern				= "rectangleX"  
		pitch				= 0  
		defaultWidth			= 0.10  
		minWidth			= 0.10  
		minSpacing			= 0.12  
		sameNetMinSpacing		= 0.12  
		unitMinResistance		= 0.004  
		unitNomResistance		= 0.004  
		unitMaxResistance		= 0.004  
}  

Layer		"metal3_top_tier" {  
		layerNumber			= 39 
		maskName			= "metal18"  
		isDefaultLayer			= 1  
		visible				= 1  
		selectable			= 1  
		blink				= 0  
		color				= "47"  
		lineStyle			= "solid"  
		pattern				= "dot"  
		pitch				= 0.10  
		defaultWidth			= 0.05  
		minWidth			= 0.05  
		minSpacing			= 0.05  
		sameNetMinSpacing		= 0.05  
		unitMinResistance		= 0.002  
		unitNomResistance		= 0.002  
		unitMaxResistance		= 0.002  
		unitMinCapacitance		= 0.000900  
		unitNomCapacitance		= 0.000900  
		unitMaxCapacitance		= 0.000900  
		unitMinHeightFromSub		= 0.70  
		unitNomHeightFromSub		= 0.70  
		unitMaxHeightFromSub		= 0.70  
		unitMinThickness		= 0.10  
		unitNomThickness		= 0.10  
		unitMaxThickness		= 0.10  
		fatTblDimension			= 5  
		fatTblThreshold			= (0,0.1005,0.3005,0.5005,0.9005)  
		fatTblParallelLengthDimension	= 5  
		fatTblParallelLength		= (0,0.5005,1.0005,1.5005,2.5005)  
		fatTblSpacing			= (0.05,0.05,0.05,0.05,0.05,  
						   0.05,0.10,0.10,0.10,0.10,  
						   0.05,0.10,0.30,0.30,0.30,  
						   0.05,0.10,0.30,0.50,0.50,  
						   0.05,0.10,0.30,0.50,0.90)  
}

Layer		"via2_top_tier" {
		layerNumber			= 40
		maskName			= "via18"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.09
		sameNetMinSpacing		= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal2_top_tier" {
		layerNumber			= 41
		maskName			= "metal19"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.19
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
		sameNetMinSpacing		= 0.07
		unitMinResistance		= 0.00025
		unitNomResistance		= 0.00025
		unitMaxResistance		= 0.00025
		unitMinCapacitance		= 0.00076
		unitNomCapacitance		= 0.00076
		unitMaxCapacitance		= 0.00076
		unitMinHeightFromSub		= 0.62
		unitNomHeightFromSub		= 0.62
		unitMaxHeightFromSub		= 0.62
		unitMinThickness		= 0.14
		unitNomThickness		= 0.14
		unitMaxThickness		= 0.14
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.0905,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 6
		fatTblParallelLength		= (0,0.3005,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,0.07,
						   0.07,0.09,0.09,0.09,0.09,0.09,
						   0.07,0.09,0.27,0.27,0.27,0.27,
						   0.07,0.09,0.27,0.5,0.5,0.5,
						   0.07,0.09,0.27,0.5,0.9,0.9,
						   0.07,0.09,0.27,0.5,0.9,1.5)
}

Layer		"via1_top_tier" {
		layerNumber			= 42
		maskName			= "via19"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.08
		sameNetMinSpacing		= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal1_top_tier" {
		layerNumber			= 43
		maskName			= "metal20"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.065
		sameNetMinSpacing		= 0.065
		unitMinResistance		= 0.00038
		unitNomResistance		= 0.00038
		unitMaxResistance		= 0.00038
		unitMinCapacitance		= 0.000859
		unitNomCapacitance		= 0.000859
		unitMaxCapacitance		= 0.000859
		unitMinHeightFromSub		= 0.37
		unitNomHeightFromSub		= 0.37
		unitMaxHeightFromSub		= 0.37
		unitMinThickness		= 0.13
		unitNomThickness		= 0.13
		unitMaxThickness		= 0.13
}

Layer		"active_top_tier" {
		layerNumber			= 44
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"poly_top_tier" {
		layerNumber			= 45
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

ContactCode	"via1_4_bottom_tier" {
		contactCodeNumber		= 1
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_0_bottom_tier" {
		contactCodeNumber		= 2
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_1_bottom_tier" {
		contactCodeNumber		= 3
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_3_bottom_tier" {
		contactCodeNumber		= 4
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_5_bottom_tier" {
		contactCodeNumber		= 5
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_8_bottom_tier" {
		contactCodeNumber		= 6
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_5_bottom_tier" {
		contactCodeNumber		= 7
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_6_bottom_tier" {
		contactCodeNumber		= 8
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_0_bottom_tier" {
		contactCodeNumber		= 9
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_1_bottom_tier" {
		contactCodeNumber		= 10
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via3_2_bottom_tier" {
		contactCodeNumber		= 11
		cutLayer			= "via3_bottom_tier"
		lowerLayer			= "metal3_bottom_tier"
		upperLayer			= "metal4_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via3_0_bottom_tier" {
		contactCodeNumber		= 12
		cutLayer			= "via3_bottom_tier"
		lowerLayer			= "metal3_bottom_tier"
		upperLayer			= "metal4_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via4_0_bottom_tier" {
		contactCodeNumber		= 13
		cutLayer			= "via4_bottom_tier"
		lowerLayer			= "metal4_bottom_tier"
		upperLayer			= "metal5_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via5_0_bottom_tier" {
		contactCodeNumber		= 14
		cutLayer			= "via5_bottom_tier"
		lowerLayer			= "metal5_bottom_tier"
		upperLayer			= "metal6_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via6_0_bottom_tier" {
		contactCodeNumber		= 15
		cutLayer			= "via6_bottom_tier"
		lowerLayer			= "metal6_bottom_tier"
		upperLayer			= "metal7_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via7_0_bottom_tier" {
		contactCodeNumber		= 16
		cutLayer			= "via7_bottom_tier"
		lowerLayer			= "metal7_bottom_tier"
		upperLayer			= "metal8_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"via8_0_bottom_tier" {
		contactCodeNumber		= 17
		cutLayer			= "via8_bottom_tier"
		lowerLayer			= "metal8_bottom_tier"
		upperLayer			= "metal9_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"via9_0_bottom_tier" {
		contactCodeNumber		= 18
		cutLayer			= "via9_bottom_tier"
		lowerLayer			= "metal9_bottom_tier"
		upperLayer			= "metal10_bottom_tier"
		isDefaultContact		= 1
		cutWidth			= 0.8
		cutHeight			= 0.8
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

ContactCode	"Via1Array-0_bottom_tier" {
		contactCodeNumber		= 19
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-1_bottom_tier" {
		contactCodeNumber		= 20
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-1_Enc_bottom_tier" {
		contactCodeNumber		= 21
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-2_bottom_tier" {
		contactCodeNumber		= 22
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-2_Enc_bottom_tier" {
		contactCodeNumber		= 23
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-3_bottom_tier" {
		contactCodeNumber		= 24
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-3_Enc_bottom_tier" {
		contactCodeNumber		= 25
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-4_bottom_tier" {
		contactCodeNumber		= 26
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-4_Enc_bottom_tier" {
		contactCodeNumber		= 27
		cutLayer			= "via1_bottom_tier"
		lowerLayer			= "metal1_bottom_tier"
		upperLayer			= "metal2_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-0_bottom_tier" {
		contactCodeNumber		= 28
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-1_bottom_tier" {
		contactCodeNumber		= 29
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-1_Enc_bottom_tier" {
		contactCodeNumber		= 30
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-2_bottom_tier" {
		contactCodeNumber		= 31
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-2_Enc_bottom_tier" {
		contactCodeNumber		= 32
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-3_bottom_tier" {
		contactCodeNumber		= 33
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-3_Enc_bottom_tier" {
		contactCodeNumber		= 34
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-4_bottom_tier" {
		contactCodeNumber		= 35
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-4_Enc_bottom_tier" {
		contactCodeNumber		= 36
		cutLayer			= "via2_bottom_tier"
		lowerLayer			= "metal2_bottom_tier"
		upperLayer			= "metal3_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-0_bottom_tier" {
		contactCodeNumber		= 37
		cutLayer			= "via3_bottom_tier"
		lowerLayer			= "metal3_bottom_tier"
		upperLayer			= "metal4_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-1_bottom_tier" {
		contactCodeNumber		= 38
		cutLayer			= "via3_bottom_tier"
		lowerLayer			= "metal3_bottom_tier"
		upperLayer			= "metal4_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-2_bottom_tier" {
		contactCodeNumber		= 39
		cutLayer			= "via3_bottom_tier"
		lowerLayer			= "metal3_bottom_tier"
		upperLayer			= "metal4_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via4Array-0_bottom_tier" {
		contactCodeNumber		= 40
		cutLayer			= "via4_bottom_tier"
		lowerLayer			= "metal4_bottom_tier"
		upperLayer			= "metal5_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via5Array-0_bottom_tier" {
		contactCodeNumber		= 41
		cutLayer			= "via5_bottom_tier"
		lowerLayer			= "metal5_bottom_tier"
		upperLayer			= "metal6_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via6Array-0_bottom_tier" {
		contactCodeNumber		= 42
		cutLayer			= "via6_bottom_tier"
		lowerLayer			= "metal6_bottom_tier"
		upperLayer			= "metal7_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via7Array-0_bottom_tier" {
		contactCodeNumber		= 43
		cutLayer			= "via7_bottom_tier"
		lowerLayer			= "metal7_bottom_tier"
		upperLayer			= "metal8_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"Via8Array-0_bottom_tier" {
		contactCodeNumber		= 44
		cutLayer			= "via8_bottom_tier"
		lowerLayer			= "metal8_bottom_tier"
		upperLayer			= "metal9_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"Via9Array-0_bottom_tier" {
		contactCodeNumber		= 45
		cutLayer			= "via9_bottom_tier"
		lowerLayer			= "metal9_bottom_tier"
		upperLayer			= "metal10_bottom_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.8
		cutHeight			= 0.8
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

ContactCode	"via1_4_top_tier" {
		contactCodeNumber		= 46
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_0_top_tier" {
		contactCodeNumber		= 47
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_1_top_tier" {
		contactCodeNumber		= 48
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_3_top_tier" {
		contactCodeNumber		= 49
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_5_top_tier" {
		contactCodeNumber		= 50
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_8_top_tier" {
		contactCodeNumber		= 51
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_5_top_tier" {
		contactCodeNumber		= 52
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_6_top_tier" {
		contactCodeNumber		= 53
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_0_top_tier" {
		contactCodeNumber		= 54
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_1_top_tier" {
		contactCodeNumber		= 55
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via3_2_top_tier" {
		contactCodeNumber		= 56
		cutLayer			= "via3_top_tier"
		lowerLayer			= "metal4_top_tier"
		upperLayer			= "metal3_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via3_0_top_tier" {
		contactCodeNumber		= 57
		cutLayer			= "via3_top_tier"
		lowerLayer			= "metal4_top_tier"
		upperLayer			= "metal3_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via4_0_top_tier" {
		contactCodeNumber		= 58
		cutLayer			= "via4_top_tier"
		lowerLayer			= "metal5_top_tier"
		upperLayer			= "metal4_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via5_0_top_tier" {
		contactCodeNumber		= 59
		cutLayer			= "via5_top_tier"
		lowerLayer			= "metal6_top_tier"
		upperLayer			= "metal5_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via6_0_top_tier" {
		contactCodeNumber		= 60
		cutLayer			= "via6_top_tier"
		lowerLayer			= "metal7_top_tier"
		upperLayer			= "metal6_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via7_0_top_tier" {
		contactCodeNumber		= 61
		cutLayer			= "via7_top_tier"
		lowerLayer			= "metal8_top_tier"
		upperLayer			= "metal7_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"via8_0_top_tier" {
		contactCodeNumber		= 62
		cutLayer			= "via8_top_tier"
		lowerLayer			= "metal9_top_tier"
		upperLayer			= "metal8_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"via9_0_top_tier" {
		contactCodeNumber		= 63
		cutLayer			= "via9_top_tier"
		lowerLayer			= "metal10_top_tier"
		upperLayer			= "metal9_top_tier"
		isDefaultContact		= 1
		cutWidth			= 0.8
		cutHeight			= 0.8
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

ContactCode	"Via1Array-0_top_tier" {
		contactCodeNumber		= 64
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-1_top_tier" {
		contactCodeNumber		= 65
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-1_Enc_top_tier" {
		contactCodeNumber		= 66
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-2_top_tier" {
		contactCodeNumber		= 67
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-2_Enc_top_tier" {
		contactCodeNumber		= 68
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-3_top_tier" {
		contactCodeNumber		= 69
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-3_Enc_top_tier" {
		contactCodeNumber		= 70
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-4_top_tier" {
		contactCodeNumber		= 71
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-4_Enc_top_tier" {
		contactCodeNumber		= 72
		cutLayer			= "via1_top_tier"
		lowerLayer			= "metal2_top_tier"
		upperLayer			= "metal1_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-0_top_tier" {
		contactCodeNumber		= 72
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-1_top_tier" {
		contactCodeNumber		= 74
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-1_Enc_top_tier" {
		contactCodeNumber		= 75
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-2_top_tier" {
		contactCodeNumber		= 76
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-2_Enc_top_tier" {
		contactCodeNumber		= 77
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-3_top_tier" {
		contactCodeNumber		= 78
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-3_Enc_top_tier" {
		contactCodeNumber		= 79
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-4_top_tier" {
		contactCodeNumber		= 80
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-4_Enc_top_tier" {
		contactCodeNumber		= 81
		cutLayer			= "via2_top_tier"
		lowerLayer			= "metal3_top_tier"
		upperLayer			= "metal2_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-0_top_tier" {
		contactCodeNumber		= 82
		cutLayer			= "via3_top_tier"
		lowerLayer			= "metal4_top_tier"
		upperLayer			= "metal3_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-1_top_tier" {
		contactCodeNumber		= 83
		cutLayer			= "via3_top_tier"
		lowerLayer			= "metal4_top_tier"
		upperLayer			= "metal3_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-2_top_tier" {
		contactCodeNumber		= 84
		cutLayer			= "via3_top_tier"
		lowerLayer			= "metal4_top_tier"
		upperLayer			= "metal3_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via4Array-0_top_tier" {
		contactCodeNumber		= 85
		cutLayer			= "via4_top_tier"
		lowerLayer			= "metal5_top_tier"
		upperLayer			= "metal4_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via5Array-0_top_tier" {
		contactCodeNumber		= 86
		cutLayer			= "via5_top_tier"
		lowerLayer			= "metal6_top_tier"
		upperLayer			= "metal5_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via6Array-0_top_tier" {
		contactCodeNumber		= 87
		cutLayer			= "via6_top_tier"
		lowerLayer			= "metal7_top_tier"
		upperLayer			= "metal6_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via7Array-0_top_tier" {
		contactCodeNumber		= 88
		cutLayer			= "via7_top_tier"
		lowerLayer			= "metal8_top_tier"
		upperLayer			= "metal7_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"Via8Array-0_top_tier" {
		contactCodeNumber		= 89
		cutLayer			= "via8_top_tier"
		lowerLayer			= "metal9_top_tier"
		upperLayer			= "metal8_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.44
		unitMinResistance		= 0.001
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.001
}

ContactCode	"Via9Array-0_top_tier" {
		contactCodeNumber		= 90
		cutLayer			= "via9_top_tier"
		lowerLayer			= "metal10_top_tier"
		upperLayer			= "metal9_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.8
		cutHeight			= 0.8
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

ContactCode	"MIVArray-0_top_tier" {
		contactCodeNumber		= 91
		cutLayer			= "MIV"
		lowerLayer			= "metal10_bottom_tier"
		upperLayer			= "metal10_top_tier"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.8
		cutHeight			= 0.8
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.88
		unitMinResistance		= 0.0005
		unitNomResistance		= 0.0005
		unitMaxResistance		= 0.0005
}

DesignRule	{
		layer1				= "via1_bottom_tier"
		layer2				= "via2_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via2_bottom_tier"
		layer2				= "via3_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via3_bottom_tier"
		layer2				= "via4_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via4_bottom_tier"
		layer2				= "via5_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via5_bottom_tier"
		layer2				= "via6_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via6_bottom_tier"
		layer2				= "via7_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via7_bottom_tier"
		layer2				= "via8_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "via8_bottom_tier"
		layer2				= "via9_bottom_tier"
		minSpacing			= 0
		minEnclosure			= 0
		stackable			= 1
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via1_top_tier"
	layer2				= "via2_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via2_top_tier"
	layer2				= "via3_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via3_top_tier"
	layer2				= "via4_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via4_top_tier"
	layer2				= "via5_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via5_top_tier"
	layer2				= "via6_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via6_top_tier"
	layer2				= "via7_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via7_top_tier"
	layer2				= "via8_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
	layer1				= "via8_top_tier"
	layer2				= "via9_top_tier"
	minSpacing			= 0
	minEnclosure			= 0
	stackable			= 1
	stackViaCenterSpacingThreshold	= 0
}
