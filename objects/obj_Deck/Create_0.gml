/// @description Insert description here
// You can write your code in this editor

global.Deck = ds_list_create();

ds_list_add(global.Deck, obj_House2, obj_House2, obj_House3, obj_House3, obj_House3, obj_House4, obj_House4, obj_House4, obj_House4, obj_House5, obj_House5, obj_House5, obj_House5, obj_House5, obj_House6, obj_House6, obj_House6, obj_House6, obj_House6, obj_House6, obj_House7, obj_House7, obj_House7, obj_House7, obj_House7, obj_House7, obj_House7, obj_House8, obj_House8, obj_House8, obj_House8, obj_House8, obj_House8, obj_House8, obj_House8, obj_Token);
ds_list_shuffle(global.Deck);


var startX = 352-(16*3);
var startY = 192-(16*3);

var currX = startX;
var currY = startY;

var count = 0;
for (var j = 0; j < 6; j++)
{
	for (var i = 0; i < 6; i++)
	{
		var currentInstance = instance_create_layer(currX, currY, "Instances", ds_list_find_value(global.Deck, count));
		currentInstance.cardX = i;
		currentInstance.cardY = j;
		
		global.Deck[|count] = currentInstance;
		
		currX += 64 + 16;
		count++;
	}
	currX = startX;
	currY += 64 + 16;
}