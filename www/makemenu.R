plot(1:10,asp=1)
xy <- list(x=c(2.9,1.3,2.4,4.2,4.6,2.9),
           y=c(9.8,8.8,7.0,7.0,8.6,9.8))
lines(xy)
text(3,8.2,'imPoly')

rect(6.1,2.1,7,2.9)
text(6.5,2.5,'hole')

rect(6,2,10,4)
text(8,3,'imRect(1)')

rect(5,1,10.2,4.2)
text(6,1.3,'imRect(2)')

symbols(8.5,8.5,circle=1.5,add=TRUE,inches=F)
text(8.5,8.5,'imCircle')

par(cex=2)
msg <- expression(paste("imText: ",hat(beta) == (X^t * X)^{-1} * X^t * y,sep=''))
text(2,4, msg, srt=45)
par(cex=1)

title("imDefault")

text(8,5.5,'imPoints',pos=4)
arrows(8,5.5,5.2,5,lty=1,length=.1)
arrows(8,5.5,6.1,5.9,lty=1,length=.1)
arrows(8,5.5,7,6.8,lty=1,length=.1)

