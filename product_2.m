function p = product_2(A, b)
[m, ~] = size(A);
p = zeros(m, 1);
for i = 1:m
    p(i) = A(i, :) * b
end
