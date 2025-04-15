function x = fwsubst3(L, b)
[n, ~] = size(L);
x = zeros(n, 1);
x(1) = b(1) / L(1, 1);
for i = 2:n
  b(i:n) = b(i:n) - x(i-1) * L(i:n, i-1);
  x(i) = b(i) / L(i, i);
end