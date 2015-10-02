<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="46upncc.aspx.cs" Inherits="_46upncc" Title="46 UP BATTALION NCC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center><h1 style="font-family:Aunchanted Bold">46 UP NCC Bn</h1>
   <p>It was raised on 01 Jan 1963 at Gorakhpur. Bn has a composition of 06 SD Coys and 051/2 JD Tps.</p>
   <br /><br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="50">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    </center>
    
    
    
</asp:Content>


