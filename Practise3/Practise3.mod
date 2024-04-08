/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 05-April-2024 at 11:27:09 PM
 *********************************************/
 
 //Decison Variables
 dvar float+ X1;
 dvar float+ X2;
 
 //Objective Function
 maximize 7*X1 + 10*X2;
  
 //Constraints
 subject to{
   4.5*X1 + 5*X2 <= 1800;
   2*X1 + X2 <= 600;
   2*X1 + 4*X2 <= 1200;
   X2 >= (X1 + X2)/3;
   X2 <= 2*(X1 + X2)/3;
 }
 
