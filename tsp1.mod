
set S ordered;
param n := card {S};

set LINKS := {i in S, j in S: ord(i) < ord(j)};

param cost {LINKS} >= 0;
var X {LINKS} binary;

minimize TotCost: sum {(i,j) in LINKS} cost[i,j] * X[i,j];

subj to Tour {i in S}: 
   sum {(i,j) in LINKS} X[i,j] + sum {(j,i) in LINKS} X[j,i] = 2;

subj to Tour1: sum {(i,j) in LINKS} X[i,j] = n;

#subj to elim1: X['a','h'] + X['a','q'] + X['h','q'] <=2;
