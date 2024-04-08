/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 06-April-2024 at 7:02:15 PM
 *********************************************/
int product = ...;
int material = ...;

range productRange = 1..product;
range materialRange = 1..material;

int profit[productRange] = ...;
int rawMaterial[materialRange] = ...;

int productMaterial[materialRange, productRange] = ...;


//dvar float+ X1
//dvar float+ X2
//dvar float+ X3
dvar float+ x[productRange];


//maximize 14* X1 + 15 * X2 + 22 * X3
maximize sum(p in productRange) profit[p] * x[p];

subject to {
 // 2*X2 + 3*X3 <=50;
 //3*X1 + 2*X2 + X3 <=200;
  materialCT: 
  forall(m in materialRange){
    sum (p in productRange) productMaterial[m, p] * x[p] <= rawMaterial[m];
  }
}