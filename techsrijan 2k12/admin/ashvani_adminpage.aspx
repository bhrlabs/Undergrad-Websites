<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ashvani_adminpage.aspx.cs" Inherits="ashvani_adminpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
        body 
        {
            padding:0px; margin:0px; font-family:Segoe UI, Calibri; 
        }
    .adminpage { float:left; width:100%; margin:auto;}
    .adminheader { float:left; width:100%; height:100px; background-color:#00afdb;}
    .adminheader h1 { color:White; font-family:Segoe UI, Calibri; text-align:center;}
    .admincontent { float:left; width:100%; height:auto;}
     h2 { font-family:Segoe UI, Calibri; font-size:20px; text-align:center;}
     .AddEvent { background-color:#f0f0f0; float:left;}
     .AddEvent table { margin:5px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="adminpage">
     <div class="adminheader">
        <h1>Techsrijan 2012 admin panel</h1>
     </div>
     <div class="admincontent">
        <%--<div class="AddEvent">
        <h2>Event Details</h2>
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Event Name"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Max Members"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Add Event" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#999999" BorderWidth="1px" CellPadding="3" 
                            EnableModelValidation="True" GridLines="Vertical" BorderStyle="None">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" 
                                HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" ForeColor="White" Font-Bold="True" />
                        </asp:GridView>

                    </td>

                </tr>
            </table>
        </div>--%>
        <div class="AddEvent">
            <asp:Button ID="Button2" runat="server" Text="No of registered users" 
                onclick="Button2_Click1" />
            <asp:Button ID="Button5" runat="server" Text="Hide" Visible="false" 
                onclick="Button5_Click" />
            <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                EnableModelValidation="True" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </div>

        <div class="AddEvent">
            
            <asp:Button ID="Button3" runat="server" 
                Text="Participants registered in Hospitality" onclick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Hide" onclick="Button4_Click" 
                Visible="False" />
            <asp:GridView ID="GridView3" runat="server" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                EnableModelValidation="True" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            
        </div>
    </div>
    </div>
    </form>
</body>
</html>
