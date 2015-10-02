<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giftbox.aspx.cs" Inherits="giftbox_giftbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Lifafewala</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
       <%--navigation scripts link--%>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/stimenu.css" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Wire+One&v1' rel='stylesheet' type='text/css' />
    <%--navigation scripts ends--%>
 <meta name="description" content="AEC Packaging UK is a renowned paper bags manufacturer and paper bag supplier which serves customers from various industries. We cater unique and sophisticated designs of paper bags, non woven bags, etc. " />
    <meta name="keywords" content="paper bags manufacturers, paper bag supplier" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="MagicZoom.css" type="text/css" media="screen" />
   
    <script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="js/jqueryui-1.8.14.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.iconmenu.js"></script>
    <script type="text/javascript" src="js/JScript.js"/>
     <script src="maxheight.js" type="text/javascript"></script>
    <script src="mz-packed.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table id="pageTable" width="1340px">
        <tr>
            <td id="header" colspan='2'>
                <a href="index.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo site.png" ImageAlign="Left"
                    Height="120" Width="240" /></a>
            </td>
            <td>
               
                <a href="contactus.aspx"><asp:Image ID="Image2" runat="server" ImageAlign="Right" AlternateText="Contact Us" ImageUrl="~/images/contactus.png" Height="100" /></a>
            </td>
        </tr>
        <tr>
            <td id="navshell">
                <%--navigation panel--%>
                <div class="container" align="center">
                    <ul id="sti-menu" class="sti-menu">
                        <li data-hovercolor="#fff"><a href="../paperbags.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Paper Bags</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-home sti-item"></span></a></li>
                        <li data-hovercolor="#fff"><a href="../paperbag/paperbags.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Gift Boxes</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-events sti-item"></span></a>
                        </li>
                        <li data-hovercolor="#fff"><a href="boxes.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Duplex Boxes</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-krypto sti-item"></span></a>
                        </li>
                        <li data-hovercolor="#fff"><a href="business.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Corrugated Boxes</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-workshops sti-item"></span></a>
                        </li>
                        <li data-hovercolor="#fff"><a href="wedding.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Plastic Packaging</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-guests sti-item"></span></a>
                        </li>
                        <li data-hovercolor="#fff"><a href="papermer.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Other Paper Products</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-sponsors sti-item"></span></a>
                        </li>
                        <li data-hovercolor="#fff"><a href="services.aspx">
                            <h2 data-type="mText" class="sti-item">
                                Services</h2>
                            <h3 data-type="sText" class="sti-item">
                            </h3>
                            <span data-type="icon" class="sti-icon sti-icon-gallery sti-item"></span></a>
                        </li>
                    </ul>
                </div>
    </table>
    <center><table>
        <tr>
        <td>
         <div><br />
       <object width="800" height="300">
<param name="movie" value="gallery.swf">
<embed src="gallery.swf" width="1300" height="700">
</embed>
<script type="text/javascript">
    var flashvars = {
};
var params = {
    allowFullScreen: "true"
};
var attributes = {};
swfobject.embedSWF("gallery.swf", "slider", "100%", "100%", "9.0.0",
	"expressInstall.swf", flashvars, params, attributes);
	
</script>
       
    </div>
    <br /><br />
        </td>
             </tr>
             <tr>
             <td>
               <center><asp:HyperLink ID="HyperLink1" runat="server"><u>About Us</u></asp:HyperLink>&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server"><u>Locations of Business</u></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server"><u>Know Our Processes</u></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server"><u>Social Empowerment Plans</u></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server"><u>Packaging Franchise</u></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink6" runat="server"><u>Our Customes</u></asp:HyperLink>
                
                
                
                </center>
    <div class="site_center">
      <div class="fb-like" data-href="http://www.facebook.com/pages/lifafewala"
            data-send="false" data-width="450" data-show-faces="false">
        </div>
        <div class="fb">
            <a href="http://www.facebook.com/pages/lifafewala">
                <img src="images/fb.png" width="50" height="47" alt="facebook" /></a></div>
        <div class="icon2">
            <g:plusone annotation="inline"></g:plusone>
        </div>
        <div class="footer">
            <p>
                <script type="text/javascript">//<![CDATA[
                    function y2k(number) {
                        return (number < 1000) ? number + 1900 : number;
                    }
                    var today = new Date();
                    var year = y2k(today.getYear());
                    document.write('Copyright ' + '&copy; ' + year + '');
                    //-->
//]]></script>

                <a href="http://www.lifafewala.com" rel="nofollow">Lifafewala (India) Ltd</a> ·
                <a href="http://www.lifafewala.com">Paper Bag Supplier</a></p>
            <p>
                All rights reserved</p>
        </div>
    </div>
             
             </td>
             
             </tr>
    
    
    
    </table></center>


















   


   
    </form>
</body>
</html>
