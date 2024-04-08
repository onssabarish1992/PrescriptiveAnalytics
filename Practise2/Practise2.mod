/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 05-April-2024 at 10:53:38 PM
 *********************************************/

 
 int products = ...;
 int rawMaterials = ...;

 
 range productRange = 1..products;
 range materialRange = 1..rawMaterials;
 
 dvar float+ X[productRange];
 
 int profit[productRange]=...;
 int productMaterial[materialRange, productRange] = ...;
 int availableRawMaterials[materialRange] = ...;
 
 maximize sum(p in productRange) profit[p] * X[p];
 
 subject to {
   forall(m in materialRange){
     sum(p in productRange) productMaterial [m,p] * X[p] <= availableRawMaterials[m] ;
   }
 }
 

 
 
 
 
 
 
 
 
 
 /*
 
 products = 3;
 
 rawMaterials = 4;
 
 profit = [14,15,22];
 
 availableRawMaterials = [50,200,200,100];
 
 productMaterial = [
	 [0,2,3],
	 [3,2,1],
	 [4,4,6],
	 [0,2,2]
 ]
 
 */
 
 
 
 