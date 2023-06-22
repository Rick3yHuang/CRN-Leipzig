restart
-- loadPackage "texMath"
-- Set up the ODE's for case A, B, and C
load("/Users/rickeyhuang/Desktop/Repositories/CRN-Leipzig/setUpSysPart2.m2");
-- Eliminatiion Steps: Finding the invariants
-- Case A:
JA = gens gb IA
numGensJA = #flatten entries(JA) -- This gives the number of generators in the Reduced GB of IA
"GB CaseA.txt" << transpose JA << endl << close
-- Try to eliminate everything except x1,x2,x3,x4,y2 (Paper 2008 mathod)
EA1 = gens eliminate({z1,z2,z3,z4,z5,z6,y1},IA)
numGensEA1 = #flatten entries(EA1)
--gensEA1 = netList flatten(entries(EA1))
-- Try to eliminate everything except x1,x2,x3,x4,y1
EA2 = gens eliminate({z1,z2,z3,z4,z5,z6,y2},IA)
numGensEA2 = #flatten entries(EA2)
--gensEA2 = netList flatten(entries(EA2))
pA = flatten(entries(EA1));
(MA1,CA1) = coefficients pA_0
"CaseA1 gens.txt" << tex MA1 << endl << close
"CaseA1 coeff.txt" << CA1 << endl << close
(MA2,CA2) = coefficients pA_1
(MA3,CA3) = coefficients pA_2
"CaseA3 gens.txt" << tex MA3 << endl << close
"CaseA3 coeff.txt" << CA3 << endl << close
(MA4,CA4) = coefficients pA_3
"CaseA.txt" << tex flatten(entries(EA2)) << endl << close
-- After adding the conservation law
gbTrace = 3
JAc = ideal groebnerBasis(IAc, Strategy=>"F4")
--JAc = gens gb IAc
EAc = eliminate({y1,y2,z1,z2,z3,z4,z5,z6},IAc)

-- Case B:
JB = gens gb IB
numGensJB = #flatten entries(JB)
-- Try to eliminate everything except x1,x2,x3,x4,y2
EB1 = gens eliminate({z4,z5,z6,z7,z8,z9,z10,y3,y4},IB)
numGensEB1 = #flatten entries(EB1)
--gensEB1 = netList flatten(entries(EB1))
pB = flatten(entries(EB1));
(MB,CB) = coefficients pB_0;
"CaseB gens.txt" << tex MB << endl << close
"CaseB coeff.txt" << CB << endl << close
"CaseB.txt" << texMath pB << endl << close

-- Case C:
JC = gens gb IC
numGensJC = #flatten entries(JC)
-- Try to eliminate everything except x1,x2,x3,x4,y3,y4
EC1 = gens eliminate({z7,z8,z9,z10,z11,z12,z13,z14,y5,y6},IC)
numGensEC1 = #flatten entries(EC1)
pC = flatten(entries(EC1));
(MC,Cc) = coefficients pC_0;
--gensEC1 = netList flatten(entries(EC1))
"CaseC gens.txt" << texMath MC << endl << close
"CaseC coeff.txt" << Cc << endl << close
"CaseC.txt" << texMath pC << endl << close
