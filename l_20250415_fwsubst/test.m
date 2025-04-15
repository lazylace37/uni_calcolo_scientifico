L = tril(rand(4))
b = rand(4, 1)

L \ b
fwsubst1(L, b)
fwsubst2(L, b)
fwsubst3(L, b)