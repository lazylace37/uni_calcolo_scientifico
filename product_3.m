function p = product_3(A, b)
[m, n] = size(A);
p = zeros(m, 1);
for j = 1:n
    p = p + A(:, j) * b(j);
end
