/// @description Insert description here
// You can write your code in this editor
var card = -1;

for (var j = 0; j < 6; j++)
{
	for (var i = 0; i < 6; i++)
	{
		card = global.Deck[|(j*6)+i].CardHouse;
		if card == 1 card = " ";
		if card == 0 card = "X";
		
		draw_text(i*20,j*20,string(card));		
	}
}
	