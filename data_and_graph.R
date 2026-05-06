library(ggplot2)

set.seed(42)
n <- 200

df <- data.frame(
  x     = rnorm(n, mean = 0, sd = 1),
  group = sample(c("A", "B", "C"), n, replace = TRUE)
)
df$y <- 2 * df$x + rnorm(n, sd = 0.8) + ifelse(df$group == "A", 1, ifelse(df$group == "B", -1, 0))

ggplot(df, aes(x = x, y = y, colour = group)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title   = "Simulated data by group",
    x       = "X",
    y       = "Y",
    colour  = "Group"
  ) +
  theme_minimal()

ggplot(df, aes(x = group, y = y, fill = group)) +
  geom_boxplot(alpha = 0.7, outlier.shape = 21) +
  labs(
    title = "Distribution of Y by group",
    x     = "Condition,
    y     = "Y"
  ) +
  theme_minimal() +
  theme(legend.position = "none")
