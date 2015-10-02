<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="1upeme.aspx.cs" Inherits="_1upeme" Title="1 UP EME COY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h1 style="font-family:Aunchanted Bold">1 UP EME COY</h1>
   <p>It was raised intially under the control of 46 UP Bn NCC, Gorakhpur. Unit moved into its present location at Madan Mohan Malaviya 
   Engineering College, location on 01 Nov,1969. Unit located at 4 km from Group Headquarter, Gorakhpur. This unit has one Senior Division Coy.</p>
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


