sizes = 100:100:1500;
nsizes = length(sizes);
niter = 100;

t_mtimes = zeros(nsizes, 1);
for i = 1:nsizes
    fprintf('%d ', i)
    A = rand(sizes(i));
    b = rand(sizes(i), 1);
    tic
    for j = 1:niter
        p = A * b;
    end
    t_mtimes(i) = toc;
end
fprintf('\n')

t_1 = zeros(nsizes, 1);
for i = 1:nsizes
    fprintf('%d ', i)
    A = rand(sizes(i));
    b = rand(sizes(i), 1);
    tic
    for j = 1:niter
        p = product(A, b);
    end
    t_1(i) = toc;
end
fprintf('\n')

t_2 = zeros(nsizes, 1);
for i = 1:nsizes
    fprintf('%d ', i)
    A = rand(sizes(i));
    b = rand(sizes(i), 1);
    tic
    for j = 1:niter
        p = product_2(A, b);
    end
    t_2(i) = toc;
end
fprintf('\n')

t_3 = zeros(nsizes,1);
for i = 1:nsizes
    fprintf('%d ', i)
    A = rand(sizes(i));
    b = rand(sizes(i), 1);
    tic
    for j = 1:niter
        p = product_3(A, b);
    end
    t_3(i) = toc;
end
fprintf('\n')

figure;
loglog(sizes,t_mtimes,'.-','MarkerSize',10,'DisplayName','mtimes')
hold on
loglog(sizes,t_1,'.-','MarkerSize',10,'DisplayName','1')
loglog(sizes,t_2,'.-','MarkerSize',10,'DisplayName','2')
loglog(sizes,t_3,'.-','MarkerSize',10,'DisplayName','3')
legend('Location','best')
