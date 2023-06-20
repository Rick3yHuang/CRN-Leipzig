restart
R = CC[k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,x1,x2,x3,x4,x5,x6,x7,h1,h2,h3,h4,h5,h6,h7,l1,l2,l3,l4,l5,l6];
N = matrix{{-1,1,-1,1,0,0,0,0,1,-1},
    {-1,1,0,0,0,0,1,-1,0,0},
    {1,-1,0,0,-1,1,0,0,0,0},
    {0,0,-1,1,-1,1,0,0,0,0},
    {0,0,1,-1,0,0,1,-1,0,0},
    {0,0,0,0,1,-1,-1,1,-1,1},
    {0,0,0,0,0,0,0,0,1,-1}};
rank(N)
Nt = transpose(N);
Wt = ker Nt
-- This shows there is a vector in the left kernel of N that has all postivie entries
B = matrix{{1,1,0,0,0,0,0},
    {0,0,1,0,0,0,0},
    {1,0,0,1,0,0,0},
    {0,0,0,0,1,0,0},
    {0,0,1,1,0,0,0},
    {0,0,0,0,0,1,0},
    {0,0,0,0,0,1,0},
    {0,1,0,0,1,0,0},
    {0,0,0,0,0,1,0},
    {1,0,0,0,0,0,1}};
Bt = transpose B;
-- This gives the kernel of N, which implies the number of lambdas we need
E = generators ker(N)
lambda = diagonalMatrix({l1,l2,l3,l4,l5,l6})
h = diagonalMatrix({h1,h2,h3,h4,h5,h6,h7})
maxCol Nt
