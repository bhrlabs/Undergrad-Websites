<%@ Page Language="VB" MasterPageFile="~/Administrator/adminmaster.master" Title="Untitled Page" %>
<%@ Import  Namespace="System.Data.SqlClient" %>
<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim email As String = User.Identity.Name + "%"
        sqldatasource1.SelectParameters.Item("email").DefaultValue = email
        If (Not Page.IsPostBack) Then
            multiview1.ActiveViewIndex = 0
        End If
    End Sub

    Protected Sub LinkClicked(ByVal sender As Object, ByVal e As CommandEventArgs)
        If e.CommandName = "OnClick" Then
           
            Dim email As String = User.Identity.Name + "%"
            
            Dim arraysplit() As String = e.CommandArgument.ToString.Split("|")
            Dim txttitle As String = arraysplit(0)
            Dim txtsentby As String = arraysplit(1)
            Dim txtdatetime As String = arraysplit(2)
            Dim txtbody As String = arraysplit(3)
            Dim sqlstring As String = "UPDATE inbox SET [check]='1' WHERE [SendTo] LIKE (@sendto) AND [SentBy]=(@sentby) AND [Title]=(@title) AND [Body]=(@body) AND [Date]=(@date)"
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlstring, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@sendto", email)
            cmd.Parameters.AddWithValue("@sentby", txtsentby)
            cmd.Parameters.AddWithValue("@title", txttitle)
            cmd.Parameters.AddWithValue("@body", txtbody)
            cmd.Parameters.AddWithValue("@date", txtdatetime)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            multiview1.ActiveViewIndex = 1
            lblbody.Text = txtbody
            lbldate.Text = txtdatetime
            lbltitle.Text = txttitle
            lblsentby.Text = txtsentby
            
            
        End If
    End Sub

    Protected Sub btnreply_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        multiview1.ActiveViewIndex = 2
    End Sub

    Protected Sub multiview1_ActiveViewChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        If (multiview1.ActiveViewIndex = 2) Then
            lblsendto.Text = lblsentby.Text
        End If
    End Sub

    Protected Sub view3btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        
        Dim email As String = User.Identity.Name
        Dim sqlstring As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES((@sendto),(@sentby),(@title),(@body),(@date),(@check))"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        myconnection.Open()
        cmd.Parameters.AddWithValue("@sendto", lblsendto.Text)
        cmd.Parameters.AddWithValue("@sentby", email)
        cmd.Parameters.AddWithValue("@title", txttitle.Text)
        cmd.Parameters.AddWithValue("@body", view3txtbody.Text)
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString)
        cmd.Parameters.AddWithValue("@check", "0")
        cmd.ExecuteNonQuery()
        myconnection.Close()
        lblmsg.Text = "mail sent"
        multiview1.ActiveViewIndex = 0
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="adminhead" Runat="Server">
<style type="text/css" >
th
{
    height:50px;
    background-color: Silver ;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteradmin" Runat="Server">
<div style="position:relative;top:50px;left:20px;">
<asp:label runat="server" ID="lblmsg" text=""></asp:label>
</div>
<div style="position:relative;top:70px;left:70px;">
<asp:MultiView runat="server" ID="multiview1" ActiveViewIndex="0" OnActiveViewChanged="multiview1_ActiveViewChanged">
    <asp:View runat="server" ID="view1">
    <asp:ListView runat="server" ID="listview1" ItemPlaceholderID="listviewcontent" datasourceid="sqldatasource1" >
    <LayoutTemplate >
    <table id="Table1" runat="server" >
    <tr id="Tr1" runat="server" >
    <th></th>
    <th id="Th1" runat="server" >Message</th>
    <th id="Th2" runat="server" >Sent By</th>
    <th id="Th3" runat="server">On Date</th>
    </tr>
    <tr runat="server" id="listviewcontent"></tr>
    <tr><td colspan="4">
    <asp:DataPager runat="server" ID="pager1" PageSize="5">
    <Fields >
    <asp:NextPreviousPagerField ButtonType="Button"
ShowFirstPageButton="True" ShowNextPageButton="False"
ShowPreviousPageButton="False" />
<asp:NumericPagerField />
<asp:NextPreviousPagerField ButtonType="Button"
ShowLastPageButton="True" ShowNextPageButton="False"
ShowPreviousPageButton="False" />
    </Fields>
    </asp:DataPager>
    </td></tr>
    </table>
    </LayoutTemplate>
    <ItemTemplate >
    
    <tr>
    <td><asp:Image ID="checkimage" runat="server"  ImageUrl ='<%#Eval("check")+".gif" %>'/></td>
    <td><asp:LinkButton ID="neotitle" runat="server" Text='<%#Eval("Title")%>' CommandArgument='<%#Eval("Title")+"|"+Eval("SentBy")+"|"+Eval("Date")+"|"+Eval("Body")%>' CommandName="OnClick" oncommand="LinkClicked"></asp:LinkButton></td>
    <td><asp:label runat="server" ID="neosentby" Text='<%#Eval("SentBy") %>'></asp:label></td>
    <td><asp:label runat="server" ID="neodate" Text='<%#Eval("Date")%>'></asp:label></td>
    </tr>
    </ItemTemplate>
    </asp:ListView>
    
    
    
    </asp:View>
    <asp:View runat="server" ID="view2">
    <table>
    <tr><td colspan="2"></td></tr>
    <tr><td colspan="2"></td></tr>
    <tr><td colspan="2"><asp:Label runat="server" id="lbltitle" Font-Bold="true" Font-Size="14px"></asp:Label></td></tr>
    <tr><td>Sent By:<asp:Label runat="server" ID="lblsentby" Font-Bold="true" Font-Size="14px"></asp:Label></td>
    <td>On <asp:Label runat="server" ID="lbldate" Font-Bold="true" Font-Size="14px"></asp:Label></td>
    </tr>
    <tr><td colspan="2">
    <asp:TextBox runat="server" ID="lblbody" width="505px" Height="300px"   Wrap="true"   BackColor="Transparent"  TextMode="MultiLine"  ></asp:TextBox>
     </td></tr>
     <tr><td colspan="2" align="center" ><asp:button ID="btnreply" Text="Reply" runat="server" OnClick="btnreply_Click" /></td></tr>
    </table>
    </asp:View>
    <asp:View runat="server" ID="view3">
    <table>
    <tr><td>Title</td><td><asp:TextBox runat="server" ID="txttitle"></asp:TextBox></td> </tr>
    <tr><td colspan="2"></td></tr>
    <tr><td>Send to </td><td><asp:Label runat="server" id="lblsendto"></asp:Label></td></tr>
    <tr><td colspan="2"></td></tr> 
   <tr><td colspan="2">
    <asp:TextBox runat="server" ID="view3txtbody" width="505px" Height="300px"   Wrap="true"  BackColor="Aqua" TextMode="MultiLine"  ></asp:TextBox>
     </td></tr>
     <tr><td colspan="2" align="center" ><asp:button ID="view3btnsend" Text="Send" runat="server" OnClick="view3btnsend_Click" /> </td></tr>
    </table>
    </asp:View>
    </asp:MultiView> 
    <asp:SqlDataSource runat="server" ID="sqldatasource1" SelectCommand="SELECT * FROM inbox WHERE [SendTo] LIKE (@email)" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>">
<SelectParameters >
<asp:Parameter Name="email" Type="String" />
</SelectParameters></asp:SqlDataSource> 
<br />
<br />
<br />
<br />
<br />
<br />
</div> </asp:Content>

