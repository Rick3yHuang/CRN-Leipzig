restart
R = CC[k1,k2,k3,k4,k5,k6,x1,x2,x3,x4,x5,x6];
f1 = -k1*x1*x3+k2*x5+k6*x6;
f2 = k3*x5-k4*x2*x4+k5*x6;
f3 = -k1*x1*x3+k2*x5+k3*x5;
f4 = -k4*x2*x4+k5*x6+k6*x6;
f5 = k1*x1*x3-k2*x5-k3*x5;
f6 = k4*x2*x4-k5*x6-k6*x6;
I1 = ideal{f1,f2,f3,f4,f5,f6}
J1 = gens gb I1
h1 = eliminate({x3,x4,x5,x6},I1)
h2 = eliminate({x3,x4},I1)
h3 = eliminate({x1,x2,x3,x4},I1)
end

restart
R = CC[k1,k2,k3,k4,k5,k6,x1,x2,x3,x5,x6];
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
