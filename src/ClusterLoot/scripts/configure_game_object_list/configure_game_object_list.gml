///@desc Initialize the array with the game objects.
// NEW GAME OBJECTS MUST BE ADDED HERE TO APPEAR IN THE MENU!

game_objects[0] = obj_SteelBlock;
game_objects[1] = obj_SteelBar;
game_objects[2] = obj_Gear;
game_objects[3] = obj_ConveyorBelt;
game_objects[4] = obj_WeldJoint;
game_objects[5] = obj_RevoluteJoint;
game_objects[6] = obj_PressurePlate;

object_names[0] = "Steel Block";
object_names[1] = "Steel Beam";
object_names[2] = "Big Gear";
object_names[3] = "Conveyor Belt";
object_names[4] = "Joint: Screw";
object_names[5] = "Joint: Motor";
object_names[6] = "Pressure Plate";

object_prices[0] = 10;
object_prices[1] = 20;
object_prices[2] = 30;
object_prices[3] = 40;
object_prices[4] = 50;
object_prices[5] = 60;
object_prices[6] = 70;

// Macro for getting the number of game objects in the menu:
#macro nGAME_OBJECTS array_length_1d(obj_ObjectCreator.game_objects)

// Macro for getting the current object:
#macro current_object obj_ObjectCreator.game_objects[obj_ObjectCreator.current_id]

// Macro for getting the current object price:
#macro current_object_price obj_ObjectCreator.object_prices[obj_ObjectCreator.current_id]