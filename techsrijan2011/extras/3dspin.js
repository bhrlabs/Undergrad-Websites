/* ==== mouse position event ==== */
var xm = 0;
var ym = 0;
document.onmousemove = function(e){
	if (window.event) e=window.event;
	xm = e.clientX;
	ym = e.clientY;
}

/* ==== resize event ==== */
function resize() {
	tdm.resize();
}
onresize = resize;



var tdm = {
//////////////////////
	FOCAL : 250,
	ZOOM  : .03,
//////////////////////
	CX : 0,
	CY : 0,

	/* ==== resize ==== */
	resize : function()
	{
		tdm.nw = this.scr.offsetWidth;
		tdm.nh = this.scr.offsetHeight;
		tdm.nx = 0;
		tdm.ny = 0;
		for (var o = tdm.scr; o != null; o = o.offsetParent)
		{
			tdm.nx += o.offsetLeft;
			tdm.ny += o.offsetTop;
		}
	},

	/* ==== main loop ==== */
	run : function ()
	{
		tdm.CX += (xm - tdm.CX) * .1;
		tdm.CY += (ym - tdm.CY) * .1;
		for (var i = 0, o; o = tdm.obj[i]; i++)
		{
			var dx = o.X - tdm.CX + tdm.nx;
			var dy = o.Y - tdm.CY + tdm.ny;
			var d  = Math.sqrt(dx * dx + dy * dy);
			var z  = (tdm.FOCAL - d) / tdm.FOCAL * (o.S * .1);
			var s  = Math.max(0, o.S + (50 - d * .1) * (o.S * tdm.ZOOM));
			var x  = o.X + dx * z - s * .5;
			var y  = o.Y + dy * z - s * .5;
			if(x > -s * .5 && x < tdm.nw && y > -s && y < tdm.nh){
				o.style.left     = Math.round(x)  + 'px';
				o.style.top      = Math.round(y)  + 'px';
				o.style.fontSize = Math.round(s) + 'px';
				o.style.zIndex   = Math.round(1000 + z);
			} else o.style.left  = '-1000px';
		}
		setTimeout(tdm.run, 16);
	},

	/* ==== initialization ==== */
	init : function (container, objects)
	{
		this.scr = document.getElementById(container);
		this.obj = [];
		var k = 0;
		for (var i = 0; i < objects.length; i++)
		{
			var o = objects[i];
			var x = o[1];
			var y = o[2];
			var f = o[3];
			var d = o[4];
			var css = o[5];
			for (var j = 0; j < o[0].length; j++)
			{
				var c = o[0].charAt(j);
				if (c != ' ')
				{
					var s = this.obj[k++] = document.createElement(o[6] ? 'a' : 'div');
					s.appendChild(document.createTextNode(c));
					s.X = x;
					s.Y = y;
					s.S = f;
					if (css) for (var l in css) s.style[l] = css[l];
					if (o[6])
					{
						s.href = o[6];
						s.style.cursor = 'pointer';
					}
					this.scr.appendChild(s);
				}
				if (d == 1) y += f * 1.2;
				else if (d == 3)
				{
					if (c != ' ') s.S = f;
					f *= 1.5;
				}
				else x += f;
			}
		}
		/* ==== go! ==== */
		this.resize();
		xm = this.nx + this.nw / 2;
		ym = this.ny + this.nh / 2;
		this.run();
	}
}

onload = function () {
	/* ==== menu ==== */
	tdm.init("screen", [
	
		["techSRIJAN 2011", 190, 370, 12],

		['ENTER SITE', 480, 300, 12, 0, {'color':'#F00'}, "home.aspx"], ['[    ]', 470, 300, 24],
		['Watch Teaser', 480, 320, 12, 0, {'color':'#F00'}, "http://www.youtube.com/watch?v=Eyrmd0TgqwA"], ['[    ]', 470, 320, 24],
		[' Facebook', 480, 340, 12, 0, {'color':'#F00'}, "http://www.facebook.com/groups/techsrijan/"], ['[    ]', 470, 340, 24],
		["MADAN MOHAN MALAVIYA ENGINEERING COLLEGE", 300, 250, 12, 0],
		["techSRIJAN 2011", 455, 370, 12]
	]);
}
