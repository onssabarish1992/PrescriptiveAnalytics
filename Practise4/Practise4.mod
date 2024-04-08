/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 06-April-2024 at 11:33:02 PM
 *********************************************/
int canoes = ...;
int departments = ...;
range canoRange = 1..canoes;
int profit[canoRange]=...;


//Decision Variable
dvar float+ X[canoRange];


// Objective Function
maximize sum (p in canoRange) X[p] * profit[p];


//Constraints
 /*subject to{
   4.5*X1 + 5*X2 <= 60 * 30;
   2*X1 + X2 <= 20 * 30;
   2*X1 + 4*X2 <= 40 * 30;
   X2 >= (X1 + X2)/3;
   X2 <= 2*(X1 + X2)/3;
 }
 */
 
 
 subject to{
   
 }
 
 
