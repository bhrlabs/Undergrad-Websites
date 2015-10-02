<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailtest.aspx.cs" Inherits="mailtest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="email Id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
    
        <br />
        <asp:Label ID="Label2" runat="server" Text="textmsg"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="send mail" />
        <br />
        <asp:Label ID="lbl_status" runat="server" Text="status" Visible="False"></asp:Label>
        
    
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="record" />
        
    
    </div>
    </form>
</body>
</html>
