function problem5c
    A1 = problem5(1000);
    N = (1:1001);
    figure(1);
    plot(N, A1(N) / max(A1));
    a1 = problem5(10);
    a2 = problem5(20);
    a3 = problem5(50);
    A1 = (0:10);
    A2 = (0:20);
    A3 = (0:50);
    figure(2);
    plot(A1,   a1(A1+1) / max(a1), 'color', 'g'); hold on;
    plot(A2/2, a2(A2+1) / max(a2), 'color', 'r'); hold on;
    plot(A3/5, a3(A3+1) / max(a3), 'color', 'b');
end