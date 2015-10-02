/* 
Example Javascript Animation Techniques by Hesido.com;
2 different reusable examples.
Attribution is not required, but is welcome, you can also take out the comments
updated: 16.05.06
*/
if (document.getElementById && document.getElementsByTagName) {
if (window.addEventListener) window.addEventListener('load', initAnims, false);
else if (window.attachEvent) window.attachEvent('onload', initAnims);
}

function initAnims() {

//	Init background frame based animation
	classChange(document.getElementById('animmenu'),'scriptactive','noscript')
	var animElements = document.getElementById('animmenu').getElementsByTagName('a');
	//document.getElementById('animmenu3').className='examplediv scriptactive';
	for(var i=0; i<animElements.length; i++) {
		animElements[i].bgAnim = {
		iPos:[0,0], //initial (starting) position (the second value will be declared as percentage, using the pUnit variable.
		pUnit:['%','px'], //Unit used for positions
		cFrame:0, //current (starting) frame
		mFrame: 14, //max frame.
		dPos:[0,-30], //width, height change (delta position) for each frame
		mSec:15 //milisecond intervals the animation will be played.
		}
		animElements[i].onmouseover = backPosAnimF;
		animElements[i].onmouseout = backPosAnimR;
		}
		
	classChange(document.getElementById('animmenu3'),'scriptactive','noscript')
	var animElements = document.getElementById('animmenu3').getElementsByTagName('a');
	for(var i=0; i<animElements.length; i++) {
		animElements[i].bgAnim = {
		iPos:[0,0], //current (starting) position (the second value will be declared as percentage, using the pUnit variable.
		pUnit:['%','px'], //Unit used for positions (For horizontal, we chose to opt for % for a motion animation,
					//while for vertical we have to use px to properly change frames)
		cFrame:0, //current (starting) frame
		mFrame: 14, //max frame.
		dPos:[5,-30], //width, height change (delta position) for each frame, we also do a little horizontal motion with percentages in this example
		mSec:15 //milisecond intervals the animation will be played.
		}
		animElements[i].onmouseover = backPosAnimF;
		animElements[i].onmouseout = backPosAnimR;
		}


	function backPosAnimF() {
	//we're passing the element, the animation variable holder, start and end frames to the animator function
		doBackPosAnim(this,this.bgAnim,this.bgAnim.cFrame, this.bgAnim.mFrame);
	}
	
	function backPosAnimR() {
		doBackPosAnim(this,this.bgAnim,this.bgAnim.cFrame, 0);
	}
		
		
//Init Background Position Animation
	classChange(document.getElementById('animmenu2'),'scriptactive','noscript')
	var animElements = document.getElementById('animmenu2').getElementsByTagName('a');
	for(var i=0; i<animElements.length; i++) {
		animElements[i].bgMove= {
		cPos:[-15,50],
		pUnit:['px','%']
		} //set Memory and position value units.
		animElements[i].onmouseover = backPosChange;
		animElements[i].onmouseout = backPosRestore;
		}

	function backPosChange() {
		doBackPosChange(this,this.bgMove,this.bgMove.cPos, [5,50], 10, 15, 0.3) ;
	}
	
	function backPosRestore() {
		doBackPosChange(this,this.bgMove,this.bgMove.cPos, [-10,50], 10, 15, 0.3);
	}
	
	
}

function doBackPosAnim(elem,vrH,startFrm,endFrm) {
//Animcode by www.hesido.com
//vrH is the varible holder for animation
	if (vrH.intID) window.clearInterval(vrH.intID);
	var actStep = 0, steps = Math.abs(endFrm - startFrm)+1;
	vrH.intID = window.setInterval(
		function() {
			vrH.cFrame = easeInOut(startFrm,endFrm,steps,actStep,1);
			vrH.cPos = [
				vrH.iPos[0]+vrH.cFrame*vrH.dPos[0], 
				vrH.iPos[1]+vrH.cFrame*vrH.dPos[1] 
 				];
			elem.style.backgroundPosition = vrH.cPos[0]+vrH.pUnit[0]+' '+vrH.cPos[1]+vrH.pUnit[1];
			actStep++;
			if (actStep > steps) window.clearInterval(vrH.intID);
		}
		,vrH.mSec)
}

function doBackPosChange(elem,vrH,startPos,endPos,steps,intervals,powr) {
//Animcode by www.hesido.com
	if (vrH.intID) window.clearInterval(vrH.intID);
	var actStep = 0;
	vrH.intID = window.setInterval(
		function() {
			vrH.cPos = [
				easeInOut(startPos[0],endPos[0],steps,actStep,powr),
				easeInOut(startPos[1],endPos[1],steps,actStep,powr)
				];
			elem.style.backgroundPosition = vrH.cPos[0]+vrH.pUnit[0]+' '+vrH.cPos[1]+vrH.pUnit[1];
			actStep++;
			if (actStep > steps) window.clearInterval(vrH.intID);
		}
		,intervals)
}

function easeInOut(minValue,maxValue,totalSteps,actualStep,powr) {
//Generic Animation Step Value Generator By www.hesido.com
	totalSteps = Math.max(totalSteps,1)
	var delta = maxValue - minValue;
	var stepp = minValue+(Math.pow(((1 / totalSteps)*actualStep),powr)*delta);
	return Math.ceil(stepp)
}

function classChange(elem,addClass,remClass) {
//Add + remove classnames function by www.hesido.com
	if (!elem.className) elem.className = '';
	var clsnm = elem.className;
	if (addClass && !clsnm.match(RegExp("\\b"+addClass+"\\b"))) clsnm = clsnm.replace(/(\S$)/,'$1 ')+addClass;
	if (remClass) clsnm = clsnm.replace(RegExp("(\\s*\\b"+remClass+"\\b(\\s*))*","g"),'$2');
	elem.className=clsnm;
	}

/* debug code  */
function showError(str) {
if (window.opera) opera.postError('|'+str+'|');
else alert('|'+str+'|');
}