sieve_of_eratosthenes <- function(N) {
  primes <- rep(TRUE, N)
  p <- 2
  while (p^2 <= N) {
    if (primes[p]) {
      for (i in seq(p^2, N, p)) {
        primes[i] <- FALSE
      }
    }
    p <- p + 1
  }
  return(sum(which(primes == TRUE)[2:N]))
}
N <- 10^8

tictoc::tic()
result <- sieve_of_eratosthenes(N)
tictoc::toc()





primes <- c(F, rep(T, N - 1))


for (i in 2:sqrt(N)) {
  if (N %% i == 0) {
    primes[i] = F
  }
}
sum_prime <- sum(primes)
sum_prime

N <- 10
primes <- c(F, rep(T, N - 1))
for (j in 1:N) {
  for (i in 2:sqrt(N)) {
    if (N %% i == 0) {
      primes[j] = F
    }
  }
}


is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  if (n == 2) return(TRUE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

prime_sum <- 0
# for (num in 1:N) {
#   if (is_prime(num)) {
#     prime_sum <- prime_sum + num
#   }
# }
# prime_sum

primes <- sapply(1:N, is_prime)
sum(primes == T)







