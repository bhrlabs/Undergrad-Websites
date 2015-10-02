<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="48upncc.aspx.cs" Inherits="_48upncc" Title="48 UP BATTALION NCC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <center><h1 style="font-family:Aunchanted Bold">48 UP NCC Bn</h1>
   <p>It was intially raised as 17 UP Gp NCC(R) at Bahraich on 19th Apr 1961. On 23 Feb 1978, the Bn was redesignated
    as 48 UP Bn NCC, and is now based at Gonda. Bn has a compostion of 05 Coys of SD and 03 Tps of JD.</p>
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

