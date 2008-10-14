im <- imagemap("Menu",height=500,width=500)

source("makemenu.R")

addRegion(im) <- imPoly(cbind(xy$x,xy$y),href="imPoly.html")

addRegion(im) <- imCircle(8.5,8.5,1.5,href="imCircle.html")

for(i in 5:7){
  addRegion(im) <- imPoint(i,i,.2,.2,href=paste("imPoint-",i,'.html',sep=''))
}

par(cex=2)
addRegion(im) <- imText(2,4,msg,pars=list(srt=45),href="imText.html")
par(cex=1)

addRegion(im) <- imRect(6.1,2.1,7,2.9)
addRegion(im) <- imRect(6,2,10,4,href="imRect-1.html")

addRegion(im) <- imRect(5,1,10.2,4.2,href="imRect-2.html")

addRegion(im) <- imDefault(href="imDefault.html")
createPage(im,"Menu.html",imgTags=list(border=0))
imClose(im)

