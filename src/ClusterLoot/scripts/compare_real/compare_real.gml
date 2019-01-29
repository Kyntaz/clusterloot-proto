/// @desc Compare two real numbers
/// @function compare_real([num1],[num2])
/// @param [num1]
/// @param [num2]
#macro epsilon 0.000001
var num1 = argument0;
var num2 = argument1;

return (abs(num1 - num2) < epsilon);