resource_1 = global.args[0]
resource_2 = global.args[1]

if resource_1 == "metal"
	sprite_1 = sprMetal
else if resource_1 == "fuel"
	sprite_1 = sprFuel
else
	sprite_1 = sprElectricity
	
if resource_2 == "metal"
	sprite_2 = sprMetal
else if resource_2 == "fuel"
	sprite_2 = sprFuel
else
	sprite_2 = sprElectricity
	
x1 = x
y1 = y
x2 = x+20
y2 = y+20
usable = false