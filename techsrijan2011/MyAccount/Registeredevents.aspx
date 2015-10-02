<%@ Page Language="VB" MasterPageFile="~/MyAccount/Masteraccount.master" Title="Registered Events"  %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data"  %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not Page.IsPostBack) Then
            
        End If
    End Sub
       

   
 

    
    Protected Sub Button1_Command(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.CommandEventArgs)
        
        If (e.CommandName = "Edit") Then
            
            Dim arrsplit() As String = e.CommandArgument.ToString.Split("|")
            Dim sql As String
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            
            
            If (arrsplit(1) Is String.Empty) Then
                
                sql = "DELETE FROM roboKRITI WHERE [TeamLeaderEmail]=(@email) AND [EventName]=(@event)"
                Dim cmd As New SqlCommand(sql, myconnection)
                myconnection.Open()
                cmd.Parameters.AddWithValue("@email", arrsplit(0))
                cmd.Parameters.AddWithValue("@event", arrsplit(5))
                cmd.ExecuteNonQuery()
                myconnection.Close()
               
            ElseIf (arrsplit(2) Is String.Empty) Then
                
                sql = "DELETE FROM roboKRITI WHERE [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [EventName]=(@event)"
                Dim cmd As New SqlCommand(sql, myconnection)
                myconnection.Open()
                cmd.Parameters.AddWithValue("@email", arrsplit(0))
                cmd.Parameters.AddWithValue("@email1", arrsplit(1))
                cmd.Parameters.AddWithValue("@event", arrsplit(5))
                cmd.ExecuteNonQuery()
                myconnection.Close()
            ElseIf (arrsplit(3) Is String.Empty) Then
                
                sql = "DELETE FROM roboKRITI WHERE [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [Partner2Email]=(@email2) AND [EventName]=(@event)"
                Dim cmd As New SqlCommand(sql, myconnection)
                myconnection.Open()
                cmd.Parameters.AddWithValue("@email", arrsplit(0))
                cmd.Parameters.AddWithValue("@email1", arrsplit(1))
                cmd.Parameters.AddWithValue("@email2", arrsplit(2))
                cmd.Parameters.AddWithValue("@event", arrsplit(5))
                cmd.ExecuteNonQuery()
                myconnection.Close()
                
               
            ElseIf (arrsplit(4) Is String.Empty) Then
                
                sql = "DELETE FROM roboKRITI WHERE [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [Partner2Email]=(@email2) AND [Partner3Email]=(@email3) AND [EventName]=(@event)"
                Dim cmd As New SqlCommand(sql, myconnection)
                myconnection.Open()
                cmd.Parameters.AddWithValue("@email", arrsplit(0))
                cmd.Parameters.AddWithValue("@email1", arrsplit(1))
                cmd.Parameters.AddWithValue("@email2", arrsplit(2))
                cmd.Parameters.AddWithValue("@email3", arrsplit(3))
                cmd.Parameters.AddWithValue("@event", arrsplit(5))
                cmd.ExecuteNonQuery()
                myconnection.Close()
                
                
            ElseIf (arrsplit(4) IsNot String.Empty) Then
                sql = "DELETE FROM roboKRITI WHERE [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [Partner2Email]=(@email2) AND [Partner3Email]=(@email3) AND [Partner4Email]=(@email4) AND [EventName]=(@event)"
                Dim cmd As New SqlCommand(sql, myconnection)
                myconnection.Open()
                cmd.Parameters.AddWithValue("@email", arrsplit(0))
                cmd.Parameters.AddWithValue("@email1", arrsplit(1))
                cmd.Parameters.AddWithValue("@email2", arrsplit(2))
                cmd.Parameters.AddWithValue("@email3", arrsplit(3))
                cmd.Parameters.AddWithValue("@email4", arrsplit(4))
                cmd.Parameters.AddWithValue("@event", arrsplit(5))
                cmd.ExecuteNonQuery()
                myconnection.Close()
                          
            End If
            Dim usr As MembershipUser = Membership.GetUser(User.Identity.Name)
            Dim leaderusername As String = usr.Email
        
            Dim sqlstring As String = "SELECT * FROM roboKRITI WHERE [TeamLeaderEmail]=(@email)OR [Partner1Email]=(@email) OR [Partner2Email]=(@email) OR [Partner3Email]=(@email) OR [Partner4Email]=(@email) "
            Dim connectionstring1 As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection1 As New SqlConnection(connectionstring1)
            Dim cmd1 As New SqlCommand(sqlstring, myconnection1)
            Dim da As New SqlDataAdapter(sqlstring, connectionstring1)
            da.SelectCommand = cmd1
            da.SelectCommand.Parameters.Add(New SqlParameter("@email", leaderusername))
            Dim dt As New DataTable
            da.Fill(dt)
            listview1.DataSource = dt
            listview1.DataBind()
        End If
    End Sub

    Protected Sub listview1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewItemEventArgs)
        Dim lblteamleaderemail As String = CType(e.Item.FindControl("lblteamleaderemail"), Label).Text.ToString
        Dim usr As MembershipUser = Membership.GetUser(User.Identity.Name)
        Dim leaderusername As String = usr.Email
        Dim delbutton As Button = CType(e.Item.FindControl("Button1"), Button)
        If (lblteamleaderemail = leaderusername) Then
            delbutton.Visible = "true"
        End If
    End Sub

    Protected Sub listview1_PagePropertiesChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.PagePropertiesChangingEventArgs)

    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs)
       
        Dim usr As MembershipUser = Membership.GetUser(User.Identity.Name)
        Dim leaderusername As String = usr.Email
            
        Dim sqlstring As String = "SELECT * FROM roboKRITI WHERE [TeamLeaderEmail]=(@email)OR [Partner1Email]=(@email) OR [Partner2Email]=(@email) OR [Partner3Email]=(@email) OR [Partner4Email]=(@email) "
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        Dim da As New SqlDataAdapter(sqlstring, connectionstring)
        da.SelectCommand = cmd
        da.SelectCommand.Parameters.Add(New SqlParameter("@email", leaderusername))
        Dim dt As New DataTable
        da.Fill(dt)
        listview1.DataSource = dt
        listview1.DataBind()
    End Sub
</script>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="accounthead" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="masteraccount1" Runat="Server">
 <div style="position:relative;top:70px;left:20px;font-weight:bold;font-size:15px;width:630px; color: #FFFFFF;">
 

<asp:ListView runat="server" ID="listview1" 
            ItemPlaceholderID="listviewcontent"    
         OnItemDataBound="listview1_ItemDataBound" 
         OnPagePropertiesChanging="listview1_PagePropertiesChanging" 
         style="color: #FFFFFF">
    <LayoutTemplate >
    <table id="Table1" runat="server" >
    <tr runat="server" id="listviewcontent">
    
    </tr>
    <tr style="position:relative;background-color:#BAD8EF;"><td>
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
    <ItemTemplate>
    
    <tr>
    <td style="position:relative;">Event Name:</td>
    <td style="position:relative;"><asp:label runat="server" ID="lbleventname" Text='<%#Eval("EventName")%>'></asp:label></td>
    <td><asp:Button ID="Button1" runat="server" CommandName="Edit" CommandArgument='<%#Eval("TeamLeaderEmail")+"|"+Eval("Partner1Email")+"|"+Eval("Partner2Email")+"|"+Eval("Partner3Email")+"|"+Eval("Partner4Email")+"|"+Eval("EventName")%>' text="delete registration "  Visible="false"    OnCommand="Button1_Command" /></td>
    </tr>
    <tr>
    <td style="position:relative;">Team Members:</td>
    <td style="position:relative;"><asp:label runat="server" ID="lblteamleadername" Text='<%#Eval("TeamLeaderName")%>'></asp:label></td>
    <td style="position:relative;"><asp:Label runat="server" ID="lblteamleaderemail" Text='<%#Eval("TeamLeaderEmail")%>'></asp:Label></td>
    
    </tr>
    <tr>
    <td></td>
    <td style="position:relative;"><asp:label runat="server" ID="partner1name" Text='<%#Eval("Partner1Name")%>'></asp:label></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner1email" Text='<%#Eval("Partner1Email")%>'></asp:label></td>
    </tr>
   <tr>
    <td></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner2name" Text='<%#Eval("Partner2Name")%>'></asp:label></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner2email" Text='<%#Eval("Partner2Email")%>'></asp:label></td>
    </tr>
    <tr>
    <td></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner3name" Text='<%#Eval("Partner3Name")%>'></asp:label></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner3email" Text='<%#Eval("Partner3Email")%>'></asp:label></td>
    </tr>
    <tr>
    <td></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner4name" Text='<%#Eval("Partner4Name")%>'></asp:label></td>
    <td style="position:relative;"><asp:label runat="server" ID="lblpartner4email" Text='<%#Eval("Partner4Email")%>'></asp:label></td>
    </tr>
    <tr><td colspan="3" style="border-bottom:solid 3px #6464EF;"></td></tr>
    <tr><td colspan="3"></td></tr>
    </ItemTemplate>
    <EmptyDataTemplate >
    Currently no event registered
    </EmptyDataTemplate>
    
    
    </asp:ListView>
    
    <br style="color: #FFFFFF" />
    <br style="color: #FFFFFF" />
    <br style="color: #FFFFFF" />
    <br style="color: #FFFFFF" />
    <br style="color: #FFFFFF" />
    <br style="color: #FFFFFF" />
    <br style="color: #FFFFFF" />
    
   
   
</div>        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
        <br style="color: #FFFFFF" />
</asp:Content>

