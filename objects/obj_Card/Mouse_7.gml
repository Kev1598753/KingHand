/// @description Insert description here
// You can write your code in this editor

show_debug_message("=========");
show_debug_message("Card Clicked - (" + string(cardX) + ", " + string(cardY) + ") - " + string(CardHouse));
show_debug_message("Token Card   - (" + string(obj_Token.cardX) + ", " + string(obj_Token.cardY) + ") - " + string(global.Deck[|(obj_Token.cardY*6)+obj_Token.cardX].CardHouse));

var targetCardHouse = CardHouse;
var smallX =  cardX < obj_Token.cardX ? cardX : obj_Token.cardX;
var bigX =  cardX > obj_Token.cardX ? cardX : obj_Token.cardX;
var smallY =  cardY < obj_Token.cardY ? cardY : obj_Token.cardY;
var bigY =  cardY > obj_Token.cardY ? cardY : obj_Token.cardY;

var sameX = smallX == bigX;
var sameY = smallY == bigY;

// If the user has clicked on the token card, return
if (sameX && sameY) return;

// If the user has clicked on an empty card, return
if (targetCardHouse == House.None) return;

if (sameX || sameY)
{
	var targetInstance;
	for (var j = smallY; j <= bigY; j++)
	{
		for (var i = smallX; i <= bigX; i++)
		{
			targetInstance = global.Deck[|(j*6)+i];
			
			var isMatch = targetCardHouse == targetInstance.CardHouse;
			
			show_debug_message("Pos " + string(i) + ", " + string(j) + " is " + string(targetInstance.CardHouse) + " Match? " + string(isMatch));
			
			if isMatch
			{
				targetInstance.CardHouse = House.None;
				targetInstance.sprite_index = spr_None;	
			}
		
			//show_debug_message(string(targetInstance) + " pos " + string(i) + ", " + string(j) + " - " + string((j*6)+i) + " ===== " + "House: " + string(targetInstance.CardHouse) + " " + isMatch);
			//targetInstance.image_alpha = 0.25;
		}
	}
	
	//Swap the token card and the clicked card
	SwitchCards((obj_Token.cardY*6)+obj_Token.cardX, (cardY*6)+cardX);
}


show_debug_message("=========");

