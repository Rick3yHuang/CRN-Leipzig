F = frac(QQ[k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,T1,T2]);
R = F[x1,x2,x3,x4,y1,y2,y3,y4,y5,y6,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14];
--R = F[x1,x2,x3,x4,y1,y2,y3,y4,z1,z2,z3,z4,z5,z6];
--R = CC[k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,
--    x1,x2,x3,x4,y1,y2,y3,y4,y5,y6,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14];
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
f13 = y1+z1+z2+z3-T1;
f14 = y2-2*z1-2*z2-2*z3-z4-z5-z6-T2;
IA = ideal{f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12};
IAc = ideal{f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14};
EAc = eliminate({y1,y2,z1,z2,z3,z4,z5,z6},IAc) 
