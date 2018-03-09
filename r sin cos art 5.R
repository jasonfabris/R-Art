
set.seed(79)

par(mfrow=c(1,2), ann=FALSE, pty='s', cex=0.2, mai=c(.05,.05, .05, .05), mar=c(0.1, 0.1, 0.1, 0.1), oma=c(0,0,0,0))

x <- seq(-2800,2800, by=0.018)

ins <- seq(as.Date("2001-01-01"), as.Date("2017-06-30"), "days")
xx <- seq(as.Date("2003-01-01"), as.Date("2018-06-30"), "weeks")

a <- as.numeric(format(ins, "%d%m"))
b <- as.numeric(format(ins, "%Y%d"))

c <- a + rnorm(length(a), mean=12, sd=15)
d <- b + rnorm(length(b), mean=15, sd=5)

plot(cos(a/x), sin(b/x), axes=FALSE, col=rgb(20, 32, 75, 45, max=255))
plot(sin(c*d)*c/d,cos((d/c)^2), axes=FALSE, col=rgb(20, 82, 75, 25, max=255))
