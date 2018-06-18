/// @description SwitchCards(FirstCard,SecondCard)

var FirstCard = global.Deck[|argument0];
var SecondCard = global.Deck[|argument1];

// Change the visual positions
var FirstCardPosX = FirstCard.x;
var FirstCardPosY = FirstCard.y;

var SecondCardPosX = SecondCard.x;
var SecondCardPosY = SecondCard.y;

FirstCard.x = SecondCardPosX;
FirstCard.y = SecondCardPosY;

SecondCard.x = FirstCardPosX;
SecondCard.y = FirstCardPosY;

// Change the ds_list position
var FirstCardInstance = FirstCard;
var SecondCardInstance = SecondCard;

var tempCardX = FirstCardInstance.cardX;
var tempCardY = FirstCardInstance.cardY;
FirstCardInstance.cardX = SecondCardInstance.cardX;
FirstCardInstance.cardY = SecondCardInstance.cardY;
SecondCardInstance.cardX = tempCardX;
SecondCardInstance.cardY = tempCardY;

ds_list_replace(global.Deck, argument0, SecondCardInstance);
ds_list_replace(global.Deck, argument1, FirstCardInstance);