/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 06-April-2024 at 11:32:44 AM
 *********************************************/
dvar float+ X1;
dvar float+ X2;
dvar float+ X3;
 
maximize 14*X1 + 15*X2 + 22*X3;
 
subject to{
  2*X2 + 3*X3  <= 50;
  3*X1 + 2*X2 + X3 <= 200;
  4*X1 + 4*X2 + 6*X3 <= 200;
  2*X3 <= 100;
}

