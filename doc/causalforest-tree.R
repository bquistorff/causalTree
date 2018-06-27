library(grf)

# Generate data.
n = 2000; p = 10
X = matrix(rnorm(n*p), n, p)
X.test = matrix(0, 101, p)
X.test[,1] = seq(-2, 2, length.out = 101)

# Train a causal forest.
W = rbinom(n, 1, 0.5)
W = runif(n, 0, 1)
Y = pmax(X[,1], 0) * W + X[,2] + pmin(X[,3], 0) + rnorm(n)
tau.forest = causal_forest(X, Y, W, sample.fraction = 1, num.trees = 1, ci.group.size = 1)
tree1 = get_tree(tau.forest, 1)
print(tree1)
#Nothing good


#sample.fraction = 1, num.trees = 1, min.node.size