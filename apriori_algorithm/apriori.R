install.packages("arules")
library(arules)

# Create dataset
transactions <- list(
  c("milk","bread","butter"),
  c("bread","butter"),
  c("milk","bread"),
  c("milk","butter")
)

# Convert to transaction format
trans <- as(transactions, "transactions")

# Apply apriori
rules <- apriori(trans, parameter=list(supp=0.5, conf=0.8))
inspect(rules)
