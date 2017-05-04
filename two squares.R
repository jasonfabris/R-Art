
#set seed to where the first plothas a lighter strip in the middle

par(mfrow=c(1,2), ann=FALSE, pty='s', cex=0.1, mai=c(.05,.05,.05,.05), mar=c(0.1, 0.1, 0.1, 0.1), oma=c(0,0,0,0))

x <- seq(-1650,1650, by=0.02)

a <- seq(1000,5000, by=rpois(300,2))
xx <- seq(0,1999, by=rpois(300,3))

c <- a + rnorm(length(a), mean=10, sd=15)
d <- a + rnorm(length(a), mean=5, sd=5)

#plot(sin(c*(log(x)*3)), cos(d*x), axes=FALSE, col=rgb(0, 125, 255, 75, max=255))
plot(sin(a/x), cos(c*x), axes=FALSE, col=rgb(50, 100, 10, 75, max=255))
#plot(sin(c*x), sqrt(cos(d*2/x)), axes=FALSE, col=rgb(100, 100, 70, 75, max=255))
plot(sqrt(sin(c%/%x)), cos(rnorm(length(d), mean=d, sd=d/2)/x), axes=FALSE, col=rgb(25, 115, 65, 85, max=255), cex=6.5, pch=1)
