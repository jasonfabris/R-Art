


set.seed(79)

par(mfrow=c(4,3), ann=FALSE, pty='s', cex=0.2, mai=c(.025,.025,.025,.025), 
    mar=c(0.05, 0.05, 0.05, 0.05), oma=c(0,0,0,0))

n1 <- rep(seq(0,4800,by=5),2)
n2 <- n1 * rnorm(length(n1), 2, 10)
n3 <- n1 * rnorm(length(n1), 20, 10)
n4 <- n1 * rnorm(length(n1), 100, 10)
n5 <- rnorm(length(n1), 1, 6)

nz <- sample(1000, length(n1), replace = TRUE, prob = rep(.3, 1000))

deg2rad <- function(deg) {(deg * pi) / (180)}

rnd_col <- function() {
  v <- round(runif(3, 0, 80))
  rgb(v[1], v[2], v[3], 42, max=255)
}

plot(sin(n2), cos(n1), axes=FALSE, col=rnd_col())
plot(sin(n1), cos(n2), axes=FALSE, col=rnd_col())
plot(sin(n2/n3), sqrt(cos(n3) * cos(n1)), axes=FALSE, col=rnd_col())
plot(cos(n4/n5)+rnorm(length(n4)), (sin(n3)-cos(n4)*2), axes=FALSE, col=rnd_col())
plot(sin(n1), cos(n3*abs(n3)), axes=FALSE, col=rnd_col())
plot(sin(n2), cos(n3), axes=FALSE, col=rnd_col())
plot(cos(((n2*n4)/n3)/n5), sin(n4)-cos(n3), axes=FALSE, col=rnd_col())
plot(cos(n2), sin(n3)-cos(n4), axes=FALSE, col=rnd_col())
plot(cos(n3)+nz, sin((nz^1.2)/n2), axes=FALSE, col=rnd_col())



