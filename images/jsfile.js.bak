

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function fun1()
{
	form1.year.value="";
}





/*** SET BUTTONS' FILENAMES HERE ***/
var buttonFolder = "images/";

supSources =new Array("sbutton1up.png","sbutton2up.png","sbutton3up.png","sbutton4up.png","sbutton5up.png");

soverSources =new Array("sbutton1over.png","sbutton2over.png","sbutton3over.png","sbutton4over.png","sbutton5over.png");


totalButtons = supSources.length;

function spreload() {
	for ( x=0; x<totalButtons; x++ ) {
		buttonUp = new Image();
		buttonUp.src = buttonFolder + supSources[x];
		buttonOver = new Image();
		buttonOver.src = buttonFolder + soverSources[x];
	}
}

function ssetOverImg(But, ID) {
	document.getElementById('sbutton' + But + ID).src = buttonFolder + soverSources[But-1];
	
}

// SET MOUSEOUT BUTTON
function ssetOutImg(But, ID) {
	document.getElementById('sbutton' + But + ID).src = buttonFolder + supSources[But-1];
	
}



/*** SET BUTTON'S FOLDER HERE ***/
var buttonFolder = "images/";

/*** SET BUTTONS' FILENAMES HERE ***/
upSources = new Array("rbutton1up.png","rbutton2up.png","rbutton3up.png","rbutton4up.png","rbutton5up.png");

overSources = new Array("rbutton1over.png","rbutton2over.png","rbutton3over.png","rbutton4over.png","rbutton5over.png");


//*** NO MORE SETTINGS BEYOND THIS POINT ***//
totalButtons = upSources.length;



//*** MAIN BUTTONS FUNCTIONS ***//
// PRELOAD MAIN MENU BUTTON IMAGES
function rpreload() {
	for ( x=0; x<totalButtons; x++ ) {
		buttonUp = new Image();
		buttonUp.src = buttonFolder + upSources[x];
		buttonOver = new Image();
		buttonOver.src = buttonFolder + overSources[x];
	}
}

// SET MOUSEOVER BUTTON
function rsetOverImg(But, ID) {
	document.getElementById('rbutton' + But + ID).src = buttonFolder + overSources[But-1];
}

// SET MOUSEOUT BUTTON
function rsetOutImg(But, ID) {
	document.getElementById('rbutton' + But + ID).src = buttonFolder + upSources[But-1];
}


//rpreload();





/*** SET BUTTON'S FOLDER HERE ***/
var buttonFolder = "images/";

/*** SET BUTTONS' FILENAMES HERE ***/
aupSources = new Array("button1up.png","button2up.png","button3up.png","button4up.png","button5up.png","button6up.png","button7up.png","button8up.png","button9up.png","button10up.png");

aoverSources = new Array("button1over.png","button2over.png","button3over.png","button4over.png","button5over.png","button6over.png","button7over.png","button8over.png","button9over.png","button10over.png");


//*** NO MORE SETTINGS BEYOND THIS POINT ***//
totalButtons = upSources.length;



//*** MAIN BUTTONS FUNCTIONS ***//
// PRELOAD MAIN MENU BUTTON IMAGES
function preload() {
	for ( x=0; x<totalButtons; x++ ) {
		buttonUp = new Image();
		buttonUp.src = buttonFolder + aupSources[x];
		buttonOver = new Image();
		buttonOver.src = buttonFolder + aoverSources[x];
	}
}

// SET MOUSEOVER BUTTON
function setOverImg(But, ID) {
	document.getElementById('button' + But + ID).src = buttonFolder + aoverSources[But-1];
}

// SET MOUSEOUT BUTTON
function setOutImg(But, ID) {
	document.getElementById('button' + But + ID).src = buttonFolder + aupSources[But-1];
}


//preload();



function validation2()
{	

     var apos=update.remail.value.indexOf("@");
     var dotpos=update.remail.value.lastIndexOf(".");
     var id=update.id.value;
     var cnum=update.contactno.value;
	var ename=update.rname.value;
	var mbnum=update.mobileno.value;
	var cname=update.company.value;
     
      if(id=="")
      {
        alert("Employee Id should be null");
        update.id.focus();
	return false;
      }
	if(ename=="")
	{
		alert("Employee Name Should not be null");
		update.rname.focus();
		return false;
	}
      for(var i=0;i<ename.length;i++)
      {
          if((ename.charCodeAt(i)<65 || ename.charCodeAt(i)>90) && (ename.charCodeAt(i)<97 || ename.charCodeAt(i)>122))
          {
       	 alert("Name should contain characters only");
        	update.rname.value="";
		update.rname.focus();
		return false;
          }
       }
    if(cname=="")
	{
		alert("Company Name Should not be null");
		update.company.focus();
		return false;
	}
	 for(var i=0;i<cname.length;i++)
      {
          if((cname.charCodeAt(i)<65 || cname.charCodeAt(i)>90) && (cname.charCodeAt(i)<97 || cname.charCodeAt(i)>122))
          {
       	 alert("Name should contain characters only");
        	update.company.value="";
		update.company.focus();
		return false;
          }
       }

      if(update.remail.value=="")
      {
        alert("Email Id should not be null");
       	update.remail.focus();
	return false;
      }
     if((apos==0||apos<0)&&(dotpos==0||dotpos<0))
	{
	 alert("Enter valid Email Id");
	update.remail.value=""; 
	update.remail.focus();
 	 return false;
	}	
    if(apos>=dotpos)
	{
	 alert("Enter valid Email Id");
	 update.remail.focus();
 	 return false;
	}
	if(cnum=="")
	{
		alert("Contact Number should not be null");
		update.contactno.focus();
		return false;
	}
	else{
	if(isNaN(cnum))
	{
		alert("Contact Number Should Contain Numbers only");
		update.contactno.value="";
		update.contactno.focus();
		return false;
	}
	}
	if(mbnum=="")
	{
		alert("Mobile Number should not be null");
		update.mobileno.focus();
		return false;
	}else{
	if(isNaN(mbnum))
	{
		alert("Mobile Number Should Contain integers only");
		update.mobileno.value="";
		update.mobileno.focus();
		return false;
	}
	}
	if(update.address.value=="")
	{
		alert("Address Should Not be null");
		update.address.focus();
		return false;
	}
	if(update.website.value=="")
	{
		alert("Please enter a valid website address");
		update.website.focus();
		return false;
	}
	if(isNaN(update.nosr.value))
	{
		alert("This field should contain integers only");
		update.nosr.value="";
		update.nosr.focus();
		return false;
	}
update.method="get";
update.action="recruiter.jsp";
return true;
}
