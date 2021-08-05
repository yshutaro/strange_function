using Plots

t(x) = 2abs((x-1)/2 - floor((x-1)/2) -1/2)
t_n(n, x) = t(2^n * x)/2^n
t₃(x) = t_n(3, x)

function takagi(x, N)
    r = 0
    for i in 1:N
        r = r + t_n(i, x)
    end
    return r
end

T(x) = takagi(x, 5)

plot(T)