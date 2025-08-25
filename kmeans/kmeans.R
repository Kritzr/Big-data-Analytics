# Sample data
set.seed(42)
data <- matrix(rnorm(200), ncol=2)

# Kmeans with 3 clusters
result <- kmeans(data, 3)

# Plot
plot(data, col=result$cluster)
points(result$centers, col=1:3, pch=8, cex=2)
