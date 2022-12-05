/*
3 pressure plates
on left side: -> lowest to highest
on right side <- highest to lowest
when books in correct order, door in the wall opens

if (place_meeting (x, y, obj_booklow1)) && etc for 2 other books {
left_active = true;
	if (left_active = true && right_active = true){
	instance_destroy (obj_walldoor);
	}
}
*/
if (global.leftbook1correct = true && global.leftbook2correct = true && global.leftbook3correct = true){
	global.leftcroc_active = true;
}

if (global.leftcroc_active = true && global.rightcroc_active = true){
	//instance_destroy (obj_walldoor);
}