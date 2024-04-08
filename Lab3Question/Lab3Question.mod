/*********************************************
 * OPL 22.1.1.0 Model
 * Author: Sabarish
 * Creation Date: 05-April-2024 at 9:17:12 AM
 *********************************************/
int subjects = ...;
int minSubject = ...;

range subjectsRange = 1..subjects;
dvar int x[subjectsRange] in 0..1;

minimize sum(s in subjectsRange) x[s];

subject to {
  
  minMath: x[1] + x[2] + x[3] + x[4] + x[7] >= minSubject;
  minResearch: x[2] + x[4] + x[5] + x[7] >= minSubject;
  minComputer: x[3] + x[5] + x[6] >= minSubject;
  calcReq: x[1] >= x[4];
  progReq1: x[6] >= x[3];
  progReq2: x[6] >= x[5];
  statsReq: x[4] >= x[7];
}