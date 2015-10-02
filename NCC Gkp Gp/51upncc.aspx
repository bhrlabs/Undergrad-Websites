<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="51upncc.aspx.cs" Inherits="_51upncc" Title="51 UP BATTALION NCC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <center><h1 style="font-family:Aunchanted Bold">51 UP NCC Bn</h1>
   <p>It was raised in May 1964 as 85 UP bn NCC at Gonda. It was later redesignated as 51 UP Bn NCC and moved to Balrampur
    on 23 Feb 1978. Bn has 05 SD Coys and 02 JD Tps.</p>
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

