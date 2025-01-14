simfun_cold <- function (N) {
  # Generate a data set
  dat <- rnorm(n = N, mean =
                 0.3 , sd = 1)
  # Test the hypothesis
  res <- t.test(dat)
  res$p.value < 0.01
}

res <- find.design (simfun =
                      simfun_cold , boundaries =
                      c(100, 300), power = 0.95)
res <- find.design (simfun =
                      simfun_cold , boundaries =
                      c(100, 300), power = 0.95 ,
                    evaluations = 2000, ci = 0.03 ,
                    time = 2)
summary(res)
plot(res)
