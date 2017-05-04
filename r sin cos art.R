

par(mfrow=c(2,4), ann=FALSE, pty='s', cex=0.1, mai=c(.05,.05,.05,.05), mar=c(0.1, 0.1, 0.1, 0.1), oma=c(0,0,0,0))

x <- seq(-1250,1250, by=0.02)



ins <- seq(as.Date("2017-01-01"), as.Date("2017-04-30"), "days")
xx <- seq(as.Date("2016-01-01"), as.Date("2016-04-30"), "days")

a <- as.numeric(format(ins, "%d%m"))
b <- as.numeric(format(ins, "%Y"))

c <- as.numeric(format(xx, "%d%m"))
d <- as.numeric(format(xx, "%Y"))

c <- a + rnorm(length(a), mean=10, sd=15)
d <- b + rnorm(length(b), mean=5, sd=5)

plot(sin(c*(log(x)*3)), cos(d*x), axes=FALSE, col=rgb(0, 125, 255, 75, max=255))
plot(sin(a/x), cos(b*x), axes=FALSE, col=rgb(50, 100, 10, 75, max=255))
plot(sin(c*x), sqrt(cos(d*2/x)), axes=FALSE, col=rgb(100, 100, 70, 75, max=255))
plot(sin(c%/%x), cos(rnorm(length(d), mean=d, sd=d/4)/x), axes=FALSE, col=rgb(25, 25, 25, 75, max=255))
# 
# plot(sin(c/x), cos(d*x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(a/x), cos(b/x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
plot(sin(c%%x), cos(b%/%x), axes=FALSE, col=rgb(30, 15, 100, 75, max=255))
plot(sin(c%/%x), cos(d/(x*1.05)), axes=FALSE, col=rgb(100, 125, 155, 75, max=255))
plot(sin(a*abs(x)), sqrt(cos(d*x)), axes=FALSE, col=rgb(0, 125, 200, 75, max=255))
plot(sin(c%%abs(x)), cos(d/x), axes=FALSE, col=rgb(20, 12, 55, 75, max=255))

# plot(sin(a/x), cos(b*abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# plot(sin(a*abs(x)), cos(b/x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(c/x), cos(d*abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(a/x), cos(b/abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))

# plot(sin(a%/%abs(x)), cos(b/x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(c/x), cos(d/abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))