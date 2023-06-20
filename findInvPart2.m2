restart
-- Set up the ODE's for case A, B, and C
load("/Users/rickeyhuang/Desktop/Repositories/CRN-Leipzig/setUpSysPart2.m2")
-- Eliminatiion Steps: Finding the invariants
-- Case A:
JA = gens gb IA
numGensJA = #flatten entries(JA) -- This gives the number of generators in the Reduced GB of IA
-- Try to eliminate everything except x1,x2,x3,x4,y2 (Paper 2008 mathod)
EA1 = gens eliminate({z1,z2,z3,z4,z5,z6,y1},IA)
numGensEA1 = #flatten entries(EA1)
--gensEA1 = netList flatten(entries(EA1))
-- Try to eliminate everything except x1,x2,x3,x4,y1
EA2 = gens eliminate({z1,z2,z3,z4,z5,z6,y2},IA)
numGensEA2 = #flatten entries(EA2)
--gensEA2 = netList flatten(entries(EA2))
"CaseA.txt" << tex flatten(entries(EA2)) << endl << close

-- Case B:
JB = gens gb IB
numGensJB = #flatten entries(JB)
-- Try to eliminate everything except x1,x2,x3,x4,y2
EB1 = gens eliminate({z4,z5,z6,z7,z8,z9,z10,y3,y4},IB)
numGensEB1 = #flatten entries(EB1)
--gensEB1 = netList flatten(entries(EB1))
"CaseB.txt" << tex flatten(entries(EB1)) << endl << close

-- Case C:
JC = gens gb IC
numGensJC = #flatten entries(JC)
-- Try to eliminate everything except x1,x2,x3,x4,y3,y4
EC1 = gens eliminate({z7,z8,z9,z10,z11,z12,z13,z14,y5,y6},IC)
numGensEC1 = #flatten entries(EC1)
--gensEC1 = netList flatten(entries(EC1))
"CaseC.txt" << tex flatten(entries(EC1)) << endl << close
