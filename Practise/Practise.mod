/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 05-April-2024 at 9:03:12 PM
 *********************************************/
 
 // Decision variables
dvar float+ X1;
dvar float+ X2;
dvar float+ X3;


execute{
  writeln("Hello World");
}

// Objective Function
maximize 14*X1 + 15*X2+ 22*X3;

//Constraints
subject to{
  //Material 1 Constraint
  2*X2 + 3*X3 <=50;
  
  //Material 2 Constraint
  3*X1 + 2*X2 + X3 <=200;
  
  //Material 3 Constraints
  4*X1 + 4*X2 + 6*X3 <= 200;
  
  //Material 4 Constraint
  2*X2 <= 200;
}

execute{
  writeln("Total Profit:",14*X1 + 15*X2+ 22*X3)
}
