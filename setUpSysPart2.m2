R = CC[k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,
    x1,x2,x3,x4,y1,y2,y3,y4,y5,y6,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14];
-- f's are those polynomials for network A
f1 = -k1*x1*y1+k2*z1+k6*z5-k19*x1*y1+k20*z1+k24*z4;
f2 = k3*z1-k4*x2*y2+k5*z5-k7*x2*y1+k8*z2+k12*z6;
f3 = -k13*x3*y1+k14*z3+k18*z6+k21*z1-k22*x3*y2+k23*z4;
f4 = k9*z2-k10*x4*y2+k11*z6+k15*z3-k16*x4*y2+k17*z6;
f5 = -k1*x1*y1+k2*z1+k3*z1-k7*x2*y1+k8*z2+k9*z2+k13*x3*y1+k14*z3+k15*z3-k19*x1*y1+k20*z1+k21*z1;
f6 = -k4*x2*y2+k5*z5+k6*z5-k10*x4*y2+k11*z6+k12*z6-k16*x4*y2+k17*z6+k18*z6-k22*x3*y2+k23*z4+k24*z4;
f7 = k1*x1*y1-k2*z1-k3*z1+k19*x1*y1-k20*z1-k21*z1;
f8 = k7*x2*y1-k8*z2-k9*z2;
f9 = k13*x3*y1-k14*z3-k15*z3;
f10 = k22*x3*y2-k23*z4-k24*z4;
f11 = k4*x2*y2-k5*z5-k6*z5;
f12 = k10*x4*y2-k11*z6-k12*z6+k16*x4*y2-k17*z6-k18*z6;
IA = ideal{f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12};
-- g's are those polynomials for network B
g1 = -k1*x1*y3+k2*z7+k6*z5-k19*x1*y4+k20*z10+k24*z4;
g2 = k3*z7-k4*x2*y2+k5*z5-k7*x2*y4+k8*z8+k12*z6;
g3 = -k13*x3*y3+k14*z9+k18*z6+k21*z10-k22*x3*y2+k23*z4;
g4 = k9*z8-k10*x4*y2+k11*z6+k15*z9-k16*x4*y2+k17*z6;
g5 = -k4*x2*y2+k5*z5+k6*z5-k10*x4*y2+k11*z6+k12*z6-k16*x4*y2+k17*z6+k18*z6-k22*x3*y2+k23*z4+k24*z4;
g6 = -k1*x1*y3+k2*z7+k3*z7-k13*x3*y3+k14*z9+k15*z9;
g7 = -k7*x2*y4+k8*z8+k9*z8-k19*x1*y4+k20*z10+k21*z10;
g8 = k22*x3*y2-k23*z4-k24*z4;
g9 = k4*x2*y2-k5*z5-k6*z5;
g10 = k10*x4*y2-k11*z6-k12*z6+k16*x4*y2-k17*z6-k18*z6;
g11 = k1*x1*y3-k2*z7-k3*z7;
g12 = k7*x2*y4-k8*z8-k9*z8;
g13 = k13*x3*y3-k14*z9-k15*z9;
g14 = k19*x1*y4-k20*z10-k21*z10;
IB = ideal{g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14};
-- h's are those polynomials for network C
h1 = -k1*x1*y3+k2*z7+k6*z11-k19*x1*y4+k20*z10+k24*z14;
h2 = k3*z7-k4*x2*y5+k5*z11-k7*x2*y4+k8*z8+k12*z12;
h3 = -k13*x3*y3+k14*z9+k18*z13+k21*z10-k22*x3*y6+k23*z14;
h4 = k9*z8-k10*x4*y6+k11*z12+k15*z9-k16*x4*y5+k17*z13;
h5 = -k1*x1*y3+k2*z7+k3*z7-k13*x3*y3+k14*z9+k15*z9;
h6 = -k7*x2*y4+k8*z8+k9*z8-k19*x1*y4+k20*z10+k21*z10;
h7 = -k4*x2*y5+k5*z11+k6*z11-k16*x4*y5+k17*z13+k18*z13;
h8 = -k10*x4*y6+k11*z12+k12*z12-k22*x3*y6+k23*z14+k24*z14;
h9 = k1*x1*y3-k2*z7-k3*z7;
h10 = k7*x2*y4-k8*z8-k9*z8;
h11 = k13*x3*y3-k14*z9-k15*z9;
h12 = k19*x1*y4-k20*z10-k21*z10;
h13 = k4*x2*y5-k5*z11-k6*z11;
h14 = k10*x4*y6-k11*z12-k12*z12;
h15 = k16*x4*y5-k17*z13-k18*z13;
h16 = k22*x3*y6-k23*z14-k24*z14;
IC = ideal{h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16};
end
