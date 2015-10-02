<%@ Page Language="VB" MasterPageFile="~/Administrator/adminmaster.master" Title="Untitled Page" %>

<script runat="server">
    Public ReadOnly Property alphafield() As String
        Get
            Return ddlfield.SelectedValue.ToString
        End Get
    End Property
    Public ReadOnly Property alphatext() As String
        Get
            Return ddlalphabet.SelectedValue.ToString
        End Get
    End Property
    Public ReadOnly Property searchfield() As String
        Get
            Return ddlsearchfield.SelectedValue.ToString
        End Get
    End Property
    Public ReadOnly Property searchtext() As String
        Get
            Return txtsearch.Text
        End Get
    End Property
    Protected Sub chksearch_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        If chksearch.Checked = True And chkalphabet.Checked = False Then
            txtsearch.Visible = True
            btnsearch.Visible = True
            ddlsearchfield.Visible = True
            ddlfield.Visible = False
            ddlalphabet.Visible = False
            btnalpha.Visible = False
        End If
        If chksearch.Checked = False And chkalphabet.Checked = True Then
            txtsearch.Visible = False
            btnsearch.Visible = False
            ddlsearchfield.Visible = False
            ddlfield.Visible = True
            ddlalphabet.Visible = True
            btnalpha.Visible = True
        End If
        If (chksearch.Checked = True And chkalphabet.Checked = True) Or (chksearch.Checked = False And chkalphabet.Checked = False) Then
            txtsearch.Visible = False
            btnsearch.Visible = False
            ddlsearchfield.Visible = False
            ddlfield.Visible = False
            ddlalphabet.Visible = False
            btnalpha.Visible = False
        End If
    End Sub

    Protected Sub chkalphabet_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        If chksearch.Checked = False And chkalphabet.Checked = True Then
            txtsearch.Visible = False
            btnsearch.Visible = False
            ddlsearchfield.Visible = False
            ddlfield.Visible = True
            ddlalphabet.Visible = True
            btnalpha.Visible = True
        End If
        If chksearch.Checked = True And chkalphabet.Checked = False Then
            txtsearch.Visible = True
            btnsearch.Visible = True
            ddlsearchfield.Visible = True
            ddlfield.Visible = False
            ddlalphabet.Visible = False
            btnalpha.Visible = False
        End If
        If (chksearch.Checked = True And chkalphabet.Checked = True) Or (chksearch.Checked = False And chkalphabet.Checked = False) Then
            txtsearch.Visible = False
            btnsearch.Visible = False
            ddlsearchfield.Visible = False
            ddlfield.Visible = False
            ddlalphabet.Visible = False
            btnalpha.Visible = False
        End If
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="adminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteradmin" Runat="Server">
<div style="position:relative;top:70px;left:70px;">
    Only one mode must be checked at a time
    <asp:CheckBox runat="server" ID="chkalphabet" Text="Switch to alphabet mode" AutoPostBack="true"  OnCheckedChanged="chkalphabet_CheckedChanged" />
    <asp:CheckBox runat="server" ID="chksearch" Text="Switch to search" AutoPostBack="true"  OnCheckedChanged="chksearch_CheckedChanged" />
    <br />
    <br />
    <br />
    <table>
    <tr><td style="position:relative;border:solid 2px;font-weight:bold;font-size:13px; text-decoration:underline;">Search by alphabetical order</td></tr>
    <tr><td style="position:relative;border:solid 2px;font-weight:bold;font-size:13px;">Select by field</td> <td><asp:DropDownList runat="server" ID="ddlfield" Visible="false"  >
    <asp:ListItem Text="Username" Value="TeamLeaderUserName" Selected="True" ></asp:ListItem>
    <asp:ListItem Text="TeamLeaderName" Value="TeamLeaderName"  ></asp:ListItem>
    <asp:ListItem Text="CollegeName" Value="CollegeName"  ></asp:ListItem>
    <asp:ListItem Text="Teamname" Value="TeamName"  ></asp:ListItem>
    </asp:DropDownList></td></tr>
  <tr><td style="position:relative;border:solid 2px;font-weight:bold;font-size:13px;">Select the first alphabet</td>
  <td><asp:DropDownList runat="server" ID="ddlalphabet" Visible="false" >
  <asp:ListItem Text="A" Value="A" Selected="True" ></asp:ListItem>
  <asp:ListItem Text="B" Value="B"  ></asp:ListItem>
  <asp:ListItem Text="C" Value="C"  ></asp:ListItem>
  <asp:ListItem Text="D" Value="D"  ></asp:ListItem>
  <asp:ListItem Text="E" Value="E"  ></asp:ListItem>
  <asp:ListItem Text="F" Value="F"  ></asp:ListItem>
  <asp:ListItem Text="G" Value="G"  ></asp:ListItem>
  <asp:ListItem Text="H" Value="H"  ></asp:ListItem>
  <asp:ListItem Text="I" Value="I"  ></asp:ListItem>
  <asp:ListItem Text="J" Value="J"  ></asp:ListItem>
  <asp:ListItem Text="K" Value="K"  ></asp:ListItem>
  <asp:ListItem Text="L" Value="L"  ></asp:ListItem>
  <asp:ListItem Text="M" Value="M"  ></asp:ListItem>
  <asp:ListItem Text="N" Value="N"  ></asp:ListItem>
  <asp:ListItem Text="O" Value="O"  ></asp:ListItem>
  <asp:ListItem Text="P" Value="P"  ></asp:ListItem>
  <asp:ListItem Text="Q" Value="Q"  ></asp:ListItem>
  <asp:ListItem Text="R" Value="R"  ></asp:ListItem>
  <asp:ListItem Text="S" Value="S"  ></asp:ListItem>
  <asp:ListItem Text="T" Value="T"  ></asp:ListItem>
  <asp:ListItem Text="U" Value="U"  ></asp:ListItem>
  <asp:ListItem Text="V" Value="V"  ></asp:ListItem>
  <asp:ListItem Text="W" Value="W"  ></asp:ListItem>
  <asp:ListItem Text="X" Value="X"  ></asp:ListItem>
  <asp:ListItem Text="Y" Value="Y"  ></asp:ListItem>
  <asp:ListItem Text="Z" Value="Z"  ></asp:ListItem></asp:DropDownList></td></tr> 
  <tr><td></td>
  <td><asp:Button runat="server" ID="btnalpha" Text="Submit" PostBackUrl="~/Administrator/viewdata.aspx"  Visible="false" /></td></tr>  </table>
   
   <table><tr>
   <td style="position:relative;border:solid 2px;font-weight:bold;font-size:13px; ">Search by field </td>
   <td><asp:DropDownList runat="server" ID="ddlsearchfield" Visible="false"   >
    <asp:ListItem Text="Username" Value="TeamLeaderUserName" Selected="True" ></asp:ListItem>
    <asp:ListItem Text="TeamLeaderName" Value="TeamLeaderName"  ></asp:ListItem>
    <asp:ListItem Text="CollegeName" Value="CollegeName"  ></asp:ListItem>
    <asp:ListItem Text="Teamname" Value="TeamName"></asp:ListItem></asp:DropDownList> </td>
    <td><asp:TextBox runat="server" ID="txtsearch" Visible="false" ></asp:TextBox></td></tr>
    <tr><td colspan="2"><asp:Button  Visible="false" runat="server" ID="btnsearch" text="Submit for search" PostBackUrl="~/Administrator/searchview.aspx" /></td></tr></table>
    </div>
</asp:Content>

