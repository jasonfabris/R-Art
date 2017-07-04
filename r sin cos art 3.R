

set.seed(79)

par(mfrow=c(2,4), ann=FALSE, pty='s', cex=0.2, mai=c(.05,.05,.05,.05), mar=c(0.1, 0.1, 0.1, 0.1), oma=c(0,0,0,0))

x <- seq(-1300,1300, by=0.015)



ins <- seq(as.Date("2001-01-01"), as.Date("2017-06-30"), "days")
xx <- seq(as.Date("2003-01-01"), as.Date("2018-06-30"), "days")

a <- as.numeric(format(ins, "%d%m"))
b <- as.numeric(format(ins, "%Y%m"))

c <- as.numeric(format(xx, "%d%m"))
d <- as.numeric(format(xx, "%y"))

c <- a + rnorm(length(a), mean=12, sd=15)
d <- b + rnorm(length(b), mean=15, sd=5)
e <- b + rnorm(length(b), mean=5, sd=6)

plot(cos(e/x), sin(d/x), axes=FALSE, col=rgb(20, 32, 75, 45, max=255))
plot(c,d, axes=FALSE, col=rgb(20, 82, 75, 25, max=255))
plot(sin(d%%x), cos(d/x), axes=FALSE, col=rgb(20, 32, 75, 45, max=255))
plot(sin(c%%abs(x)), cos(d/x), axes=FALSE, col=rgb(20, 72, 95, 25, max=255))

plot(d,c, axes=FALSE, col=rgb(20, 82, 75, 25, max=255))
plot(sin(x/e), cos(d/x), axes=FALSE, col=rgb(20, 32, 75, 45, max=255))
plot(sin(e/x), cos(d/x), axes=FALSE, col=rgb(15, 52, 85, 65, max=255))
plot(sin(x/e), sqrt(acos((x%%c)/d)), axes=FALSE, col=rgb(20, 32, 75, 25, max=255))



# plot(sin(c*(log(x)*3)), cos(d*x), axes=FALSE, col=rgb(0, 125, 255, 75, max=255))
# plot(sin(a/x), cos(b*x), axes=FALSE, col=rgb(50, 100, 10, 75, max=255))
# plot(sin(c*x), sqrt(cos(d*2/x)), axes=FALSE, col=rgb(100, 100, 70, 75, max=255))
# plot(sin(c%/%x), cos(rnorm(length(d), mean=d, sd=d/4)/x), axes=FALSE, col=rgb(25, 25, 25, 75, max=255))
#

# plot(sin(c/x), cos(d*x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(a/x), cos(b/x), axes=FALSE, col=rgb(0, 0, 1, 0.5))


# plot(sin(c%%x), cos(b%/%x), axes=FALSE, col=rgb(30, 15, 100, 75, max=255))
# plot(sin(c%/%x), cos(d/(x*1.05)), axes=FALSE, col=rgb(100, 125, 155, 75, max=255))
# plot(sin(a*abs(x)), sqrt(cos(d*x)), axes=FALSE, col=rgb(0, 125, 200, 75, max=255))
# plot(sin(c%%abs(x)), cos(d/x), axes=FALSE, col=rgb(20, 12, 55, 75, max=255))

# plot(sin(a/x), cos(b*abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# plot(sin(a*abs(x)), cos(b/x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(c/x), cos(d*abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(a/x), cos(b/abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))

# plot(sin(a%/%abs(x)), cos(b/x), axes=FALSE, col=rgb(0, 0, 1, 0.5))
# 
# plot(sin(c/x), cos(d/abs(x)), axes=FALSE, col=rgb(0, 0, 1, 0.5))