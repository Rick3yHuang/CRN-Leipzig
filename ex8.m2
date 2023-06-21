restart
loadPackage "NumericalAlgebraicGeometry";
loadPackage "ExampleSystems";
loadPackage "EigenSolver";
F = frac(QQ[k1,k2,k3,T,l1,l2,h1,h2]);
R = F[x1,x2];
f1 = k1*x1^2-2*k2*x2^2-k3*x1*x2;
f2 = x1+2*x2-T;
I = ideal{f1,f2};
eli = flatten entries gens eliminate(x2,I);
--s = solveSystem flatten entries gens eli;
--sol = zeroDimSolve h;
N = matrix{{-2,4,2},{1,-2,-1}};
E = gens ker N;
lambda = matrix{{l1},{l2}};
El = E*lambda;
mu = diagonalMatrix flatten entries El;
B = matrix{{2,0,1},{0,2,1}};
Bt = transpose B;
h = diagonalMatrix {h1,h2}
M = N*mu*Bt*h;
eigenvalues M;

