restart
-- Case A
F = frac(QQ[k1,k2,k3,k4,k5,k6,T1,T2,T3])
R = F[x3,x4,x5,x6,x1,x2];
f1 = -k1*x1*x3+k2*x5+k6*x6;
f2 = k3*x5-k4*x2*x4+k5*x6;
f3 = -k1*x1*x3+k2*x5+k3*x5;
f4 = -k4*x2*x4+k5*x6+k6*x6;
f5 = k1*x1*x3-k2*x5-k3*x5;
f6 = k4*x2*x4-k5*x6-k6*x6;
I1 = ideal{f1,f2,f3,f4,f5,f6}
-- f7(F_{tot}),f8(E_{tot}), and f9(S_{tot}) are the conservation laws
J1 = gens gb I1
h1 = eliminate({x3,x4,x5,x6},I1)
h2 = eliminate({x5,x6},I1)
h3 = eliminate({x1,x2,x3,x4},I1)
f7 = x4+x6-T1;
f8 = x3+x5-T2;
f9 = x1+x2+x5+x6-T3;
--f10 = x1+x2+2*x3+x4+3*x5+2*x6-T;
--h4 = eliminate({x1,x2,x5,x6},I1)
I1new = ideal{f1,f2,f3,f4,f5,f6,f7,f8,f9};
J1new = gens gb I1new
--Isolation x3.txt" << tex transpose J1new << endl << close
h1new = eliminate({x3,x4,x5,x6},I1new)
--"Isolation x3.txt" << tex transpose gens h1new << endl << close
end

restart
-- Case B
F = frac(QQ[k1,k2,k3,k4,k5,k6])
R = F[x3,x5,x6,x1,x2];
g1 = -k1*x1*x3+k2*x5+k6*x6;
g2 = k3*x5-k4*x2*x3+k5*x6;
g3 = -k1*x1*x3+k2*x5+k3*x5-k4*x2*x3+k5*x6+k6*x6;
g4 = k1*x1*x3-k2*x5-k3*x5;
g5 = k4*x2*x3-k5*x6-k6*x6;
I2 = ideal{g1,g2,g3,g4,g5}
J2 = gens gb I2
h5 = eliminate({x3,x5,x6},I2)
h6 = eliminate({x3,x5},I2)
h7 = eliminate({x1,x2,x3},I2)
end

restart
F = frac(QQ[k1,k2,k3,k4,k5,k6]);
R = F[x3,x4,x5,x6,x1,x2];
NA = matrix{{-1,1,0,0,0,1},
    {0,0,1,-1,1,0},
    {-1,1,1,0,0,0},
    {0,0,0,-1,1,1},
    {1,-1,-1,0,0,0},
    {0,0,0,1,-1,-1}};
tNA = transpose NA;
leftKer = transpose(gens ker tNA)
end

restart
F = frac(QQ[k1,k2,k3,k4,k5,k6]);
R = F[x3,x5,x6,x1,x2];
NB = matrix{{-1,1,0,0,0,1},
    {0,0,1,-1,1,0},
    {-1,1,1,-1,1,1},
    --{0,0,0,0,0,0},
    {1,-1,-1,0,0,0},
    {0,0,0,1,-1,-1}}
tNB = transpose NB;
leftKerB = transpose(gens ker tNB)
end
