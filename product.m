function p = product(A, b)
[m, n] = size(A);
p = zeros(m, 1);
for i = 1:m
    for j = 1:n
	p(i) = p(i) + A(i, j) * b(j);
    end
end