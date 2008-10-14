
<!-- This is the project specific website template -->
<!-- It can be changed as liked or replaced by other content -->

<?php

$domain=ereg_replace('[^\.]*\.(.*)$','\1',$_SERVER['HTTP_HOST']);
$group_name=ereg_replace('([^\.]*)\..*$','\1',$_SERVER['HTTP_HOST']);
$themeroot='http://r-forge.r-project.org/themes/rforge/';

echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en   ">

  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title><?php echo $group_name; ?></title>
	<link href="<?php echo $themeroot; ?>styles/estilo1.css" rel="stylesheet" type="text/css" />
  </head>

<body>

<! --- R-Forge Logo --- >
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr><td>
<a href="/"><img src="<?php echo $themeroot; ?>/images/logo.png" border="0" alt="R-Forge Logo" /> </a> </td> </tr>
</table>


<!-- get project title  -->
<!-- own website starts here, the following may be changed as you like -->

<?php if ($handle=fopen('http://'.$domain.'/export/projtitl.php?group_name='.$group_name,'r')){
$contents = '';
while (!feof($handle)) {
	$contents .= fread($handle, 8192);
}
fclose($handle);
echo $contents; } ?>

<!-- end of project description -->

<h1>Imagemaps in R</h1>
<p>
This package enables you to build clickable HTML imagemaps in R. Imagemaps are graphics
with clickable hotspots in various shapes that when clicked can take the user to a new 
web page or activate javascript actions. Some knowledge of HTML is required.
</p>

<h1>Imagemap examples</h1>
<p>
This example illustrates all the possible clickable objects supported.
Currently the links go nowhere:
</p>

<img src="Menu.png" usemap="#Menu" border="0"  ISMAP><map name="Menu">
<area shape="poly" coords="174,83,118,120,157,187,219,187,233,128,174,83" href="#poly"  >
<area shape="circle" coords="369,131,52" href="#circle"  >
<area shape="rect" coords="244,265,251,258" href="#point5"  >
<area shape="rect" coords="278,228,285,221" href="#point6"  >
<area shape="rect" coords="313,191,320,183" href="#point7"  >
<area shape="poly" coords="77,389,233,234,208,209,53,364" href="#text"  >
<area shape="rect" coords="285,340,317,370"  >
<area shape="rect" coords="282,299,421,373" href="#rect1"  >
<area shape="rect" coords="247,291,428,411" href="#rect2"  >
<area shape="default" href="#default"  >
</map>

<p>
Note that:
<ul>
  <li>The default link is valid everywhere that no other link is
  specified. Default links are optional.</li>
  <li>The two overlapping rectangles have to be defined in the right
  order. Imagemaps will always hit the first matching region. The
  imagemap package will keep the order of definition.</li>
  <li>I've only made three of the points clickable.</li>
  <li>The text clickable area is not exact - the strheight function in
  R does not seem to measure descender heights.</li>
  <li>The hole in the rectangle is made by defining a rectangle with
  no href argument.</li>
</ul>
</p>

<p>
Here is the code to produce this example: firstly the code that plots
the graphics, <a href="makemenu.R">makemenu.R</a>:
</p>

<pre style='background-color: #ffffff'>
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
</pre>

<p>
Then the code that creates the imagemap object, and hence the HTML and
PNG file. It sources the <code>makemenu.R</code> file in order to draw
on the PNG device opened by the imagemap. This file is <a href="makemenuPNG.R">makemenuPNG.R</a>:
</p>

<pre style='background-color: #ffffff'>
im <- imagemap("Menu",height=500,width=500)

source("makemenu.R")

addRegion(im) <- imPoly(cbind(xy$x,xy$y),href="#poly")

addRegion(im) <- imCircle(8.5,8.5,1.5,href="#circle")

for(i in 5:7){
  addRegion(im) <- imPoint(i,i,.2,.2,href=paste("#point",i,sep=''))
}

par(cex=2)
addRegion(im) <- imText(2,4,msg,pars=list(srt=45),href="#text")
par(cex=1)

addRegion(im) <- imRect(6.1,2.1,7,2.9)
addRegion(im) <- imRect(6,2,10,4,href="#rect1")

addRegion(im) <- imRect(5,1,10.2,4.2,href="#rect2")

addRegion(im) <- imDefault(href="#default")
createPage(im,"Menu.html",imgTags=list(border=0))
imClose(im)
</pre>

<p>
The two sets of code are kept separate so that I can call the first
one on a conventional plot device to check the layout, and then I can
just source the second one to create Menu.html and Menu.png. Then I
can open Menu.html in a browser and click away.
</p>


<p> The <strong>project summary page</strong> you can find <a href="http://<?php echo $domain; ?>/projects/<?php echo $group_name; ?>/"><strong>here</strong></a>. </p>

</body>
</html>
