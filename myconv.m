function y = myconv(h, x)
    M = length(h);
    L = length(x);
    y = zeros(1,M+L);
    a = 1:1:M+L;
    b = 1:1:M;
    x = [x, zeros(1,M+1)];
    for n = a
        for m = b
            if (n-m)>0
                y(n) = y(n) + h(m)*x(n-m);
            end
        end
    end
end
