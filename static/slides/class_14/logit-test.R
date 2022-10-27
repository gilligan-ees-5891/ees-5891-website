N <- 100

x <- rnorm(N)
z <- rnorm(N, 1.5, 0.25)
alpha = 0.5
beta_x = 1
beta_z = 1


df <- tibble(x = x, z = z,
             mu = alpha + beta_x * x + beta_x * z,
             p = 1 / (1 + exp(-mu)),
             y = rbern(length(p), p))

df %>% mutate(y = ordered(y)) %>%
  ggplot(aes(x = x, y = z, color = y, shape = y)) +
  geom_point(size = 2, alpha = 0.7) +
  scale_color_brewer(palette = "Dark2")

mdl_true <- ulam(
  flist = alist(
    y ~ dbern(p),
    logit(p) <- a + bx * x + bz * z,
    a ~ dnorm(0,1),
    bx ~ dnorm(0, 2),
    bz ~ dnorm(0, 2)
  ), data = df
)

mdl_omit <- ulam(
  flist = alist(
    y ~ dbern(p),
    logit(p) <- a + bx * x,
    a ~ dnorm(0,1),
    bx ~ dnorm(0, 2)
  ), data = df
)

