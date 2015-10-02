/***********************************************
* Flexi Slideshow- © Dynamic Drive (www.dynamicdrive.com)
* This notice must stay intact for use
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

var variableslide = new Array()

//variableslide[x]=["path to image", "OPTIONAL link for image", "OPTIONAL text description (supports HTML tags)"]

variableslide[0] = ['sponsors/images/sbi.jpg', '', '']
variableslide[1] = ['sponsors/images/ikafest.jpg', '', '']
variableslide[2] = ['sponsors/images/feeder.jpg', '', '']
variableslide[3] = ['sponsors/images/twenty.jpg', '', '']
variableslide[4] = ['sponsors/images/cmc.jpg', '', '']
variableslide[5] = ['sponsors/images/h2e.jpg', '', '']

//configure the below 3 variables to set the dimension/background color of the slideshow

var slidewidth = '250px' //set to width of LARGEST image in your slideshow
var slideheight = '150px' //set to height of LARGEST iamge in your slideshow, plus any text description
var slidebgcolor = '#F3F3F3'

//configure the below variable to determine the delay between image rotations (in miliseconds)
var slidedelay = 3000

////Do not edit pass this line////////////////

var ie = document.all
var dom = document.getElementById

for (i = 0; i < variableslide.length; i++) {
    var cacheimage = new Image()
    cacheimage.src = variableslide[i][0]
}

var currentslide = 0

function rotateimages() {
    contentcontainer = '<center>'
    if (variableslide[currentslide][1] != "")
        contentcontainer += '<a href="' + variableslide[currentslide][1] + '">'
    contentcontainer += '<img src="' + variableslide[currentslide][0] + '" border="0" vspace="3">'
    if (variableslide[currentslide][1] != "")
        contentcontainer += '</a>'
    contentcontainer += '</center>'
    if (variableslide[currentslide][2] != "")
        contentcontainer += variableslide[currentslide][2]

    if (document.layers) {
        crossrotateobj.document.write(contentcontainer)
        crossrotateobj.document.close()
    }
    else if (ie || dom)
        crossrotateobj.innerHTML = contentcontainer
    if (currentslide == variableslide.length - 1) currentslide = 0
    else currentslide++
    setTimeout("rotateimages()", slidedelay)
}

if (ie || dom)
    document.write('<div id="slidedom" style="width:' + slidewidth + ';height:' + slideheight + '; background-color:' + slidebgcolor + '"></div>')

function start_slider() {
    crossrotateobj = dom ? document.getElementById("slidedom") : ie ? document.all.slidedom : document.slidensmain.document.slidenssub
    if (document.layers)
        document.slidensmain.visibility = "show"
    rotateimages()
}

if (ie || dom)
    start_slider()
else if (document.layers)
    window.onload = start_slider