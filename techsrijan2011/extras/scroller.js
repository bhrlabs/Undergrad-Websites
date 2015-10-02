//CONFIGURE MESSAGES AND VARIABLES
var tickercontents=new Array()
tickercontents[0]='hardRACHANA: Details for the product description has been uploaded in the problem statement.'
tickercontents[1] = 'festNIGHTS: Laser Show on October 29.'
tickercontents[2] = 'techPRASTUTI: The list of selected teams has been uploaded.'
tickercontents[3] = 'venTURA: Brief details of stage 2 has been uploaded.'
tickercontents[4] = 'hardRACHANA: Last date of abstract submission is 24th October.'

var tickerwidth="150px"
var tickerheight="100px"
var fontcss="font:15px Calibri; color:white"
var tickdelay=3000 //delay btw messages
var highlightspeed=2 //2 pixels at a time.
var highlightcolor=""
var backdroptextcolor="black"



document.write('<style>#highlighterbg a{color:'+backdroptextcolor+'}</style>')
document.write('<div style="position:relative;left:35px;top:0px; width:'+tickerwidth+'; height:'+tickerheight+';'+fontcss+'">')
document.write('<span id="highlighterbg" style="position:absolute;left:0;top:0;color:'+backdroptextcolor+'; width:'+tickerwidth+'; height:'+tickerheight+';padding: 4px"></span><span id="highlighter" style="position:absolute;left:0;top:0;clip:rect(auto auto auto 0px); background-color:'+highlightcolor+'; width:'+tickerwidth+';height:'+tickerheight+';padding: 4px"></span>')
document.write('</div>')

var currentmessage=0
var clipbottom=1

function changetickercontent(){
msgheight=clipbottom=crosstick.offsetHeight
crosstick.style.clip="rect("+msgheight+"px auto auto 0px)"
crosstickbg.innerHTML=tickercontents[currentmessage]
crosstick.innerHTML=tickercontents[currentmessage]
highlightmsg()
}

function highlightmsg(){
//var msgheight=crosstick.offsetHeight
if (clipbottom>0){
clipbottom-=highlightspeed
crosstick.style.clip="rect("+clipbottom+"px auto auto 0px)"
beginclip=setTimeout("highlightmsg()",20)
}
else{
clipbottom=msgheight
clearTimeout(beginclip)
if (currentmessage==tickercontents.length-1) currentmessage=0
else currentmessage++
setTimeout("changetickercontent()",tickdelay)
}
}

function start_ticking(){
crosstickbg=document.getElementById? document.getElementById("highlighterbg") : document.all.highlighterbg
crosstick=document.getElementById? document.getElementById("highlighter") : document.all.highlighter
crosstickParent=crosstick.parentNode? crosstick.parentNode : crosstick.parentElement
if (parseInt(crosstick.offsetHeight)>0)
crosstickParent.style.height=crosstick.offsetHeight+'px'
else
setTimeout("crosstickParent.style.height=crosstick.offsetHeight+'px'",100) //delay for Mozilla's sake
changetickercontent()
}

if (document.all || document.getElementById)
window.onload=start_ticking
