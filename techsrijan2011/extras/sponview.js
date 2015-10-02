var flashyshow=new flashyslideshow({ //create instance of slideshow
	wrapperid: "myslideshow", //unique ID for this slideshow
	wrapperclass: "flashclass", //desired CSS class for this slideshow
	imagearray: [
		["http://www.techsrijan.com/images/s-ongc.png", "http://www.ongcindia.com/", "_new", ""],
        ["http://www.techsrijan.com/images/s-tcs.png", "http://www.tcs.com/", "_new", ""],
		["http://www.techsrijan.com/images/s-ieee.png", "http://www.ieee.org/", "_new", ""],
		["http://www.techsrijan.com/images/s-peta.png", "http://www.petaindia.com/", "_new", ""],
        ["http://www.techsrijan.com/images/s-pnb.png", "http://www.pnbindia.in/", "_new", ""],
        ["http://www.techsrijan.com/images/s-albd.png", "http://www.allahabadbank.com/", "_new", ""],
        ["http://www.techsrijan.com/images/s-quip.png", "http://www.quipmate.in/", "_new", ""],
		["http://www.techsrijan.com/images/s-sae.png", "http://www.saeindia.org/", "_new", ""],
		["http://www.techsrijan.com/images/s-ind.png", "http://www.i3indya.com/", "_new", ""],
		["http://www.techsrijan.com/images/s-hor.png", "http://horizon.mbsgroup.in/", "_new", ""],
		["http://www.techsrijan.com/images/s-fado.png", "http://www.faadooengineers.com/", "_new", ""],
		["http://www.techsrijan.com/images/s-iedu.png", "http://www.indiaeducation.new/", "_new", ""],
	],
	pause: 3000, //pause between content change (millisec)
	transduration: 1000 //duration of transition (affects only IE users)
})
