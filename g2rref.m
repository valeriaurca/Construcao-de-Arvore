
function [A] = g2rref(A)
[m,n] = size(A);

% Loop over the entire matrix.
i = 1;
j = 1;

while (i <= m) && (j <= n)
   % Find value and index of largest element in the remainder of column j.
   k = find(A(i:m,j),1) + i - 1;

   % Swap i-th and k-th rows.
   A([i k],j:n) = A([k i],j:n);
   
   % Save the right hand side of the pivot row
   aijn = A(i,j:n);
   
   % Column we're looking at
   col = A(1:m,j);
   
   % Never Xor the pivot row against itself
   col(i) = 0;
   
   % This builds an matrix of bits to flip
   flip = col*aijn;
   
   % Xor the right hand side of the pivot row with all the other rows
   A(1:m,j:n) = xor( A(1:m,j:n), flip );

   i = i + 1;
   j = j + 1;
end