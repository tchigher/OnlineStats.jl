module Experiments
# reload("OnlineStats")
using OnlineStats, StatsBase

n, p = 1_000_000, 5
x = randn(n, p)
y = x * collect(1.:p) + randn(n)

@time o = StatLearn(x, y, AdaGrad())
@show coef(o)
@time o = StatLearn(x, y, 5, AdaGrad())
@show coef(o)




end
