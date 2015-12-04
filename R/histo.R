h1 <- hist(df$x, breaks=25, plot=F)
h2 <- hist(df$y, breaks=25, plot=F)
top <- max(h1$counts, h2$counts)
k <- kde2d(df$x, df$y, n=25)

# margins
oldpar <- par()
par(mar=c(3,3,1,1))
layout(matrix(c(2,0,1,3),2,2,byrow=T),c(3,1), c(1,3))
image(k, col=r) #plot the image
par(mar=c(0,2,1,0))
barplot(h1$counts, axes=F, ylim=c(0, top), space=0, col='red')
par(mar=c(2,0,0.5,1))
barplot(h2$counts, axes=F, xlim=c(0, top), space=0, col='red', horiz=T)

mx <- mydata$x
my <- mydata$y

h <- hist(mydata$x)

breaks <- data.frame(
  "beg"=h$breaks[-length(h$breaks)], 
  "end"=h$breaks[-1]
)

sums <- apply(breaks, MARGIN=1, FUN=function(x) { sum(my[ mx >= x[1] & mx < x[2] ]) })

h$counts <- sums
plot(h, ylab="Sum", main="Sum of y Within x Bins")