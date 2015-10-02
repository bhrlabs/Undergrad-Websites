<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data"  %>
<script runat="server">
    Protected Sub gridview1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim row As GridViewRow = gridview1.SelectedRow
        Dim teamname As String = row.Cells(1).Text
        Dim username As String = row.Cells(2).Text
        Dim leadername As String = row.Cells(3).Text
        Dim eventname As String = row.Cells(4).Text
        Dim collegename As String = row.Cells(5).Text
        Dim email As String = row.Cells(6).Text
        Dim mobile As String = row.Cells(7).Text
        Dim sqlstring As String = "SELECT * FROM roboKRITI WHERE [TeamName]=(@teamname) AND [TeamLeaderUserName]=(@username) AND [TeamLeaderName]=(@leader) AND [EventName]=(@event) AND [CollegeName]=(@college) AND [TeamLeaderEmail]=(@email) AND [TeamLeaderMobile]=(@mobile)"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        Dim da As New SqlDataAdapter(sqlstring, connectionstring)
        da.SelectCommand = cmd
        da.SelectCommand.Parameters.Add(New SqlParameter("@teamname", teamname))
        da.SelectCommand.Parameters.Add(New SqlParameter("@username", username))
        da.SelectCommand.Parameters.Add(New SqlParameter("@leader", leadername))

        da.SelectCommand.Parameters.Add(New SqlParameter("@event", eventname))
        da.SelectCommand.Parameters.Add(New SqlParameter("@college", collegename))
        da.SelectCommand.Parameters.Add(New SqlParameter("@email", email))
        da.SelectCommand.Parameters.Add(New SqlParameter("@mobile", mobile))
        Dim dt As New DataTable
        da.Fill(dt)
        listview1.DataSource = dt
        listview1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        gridview1.SelectedIndex = -1
    End Sub

    Protected Sub ddlevent_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        sqldatasource1.SelectParameters.Item("event").DefaultValue = ddlevent.SelectedValue.ToString + "%"
        gridview1.SelectedIndex = -1
        listview1.DataBind()
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" Runat="Server">
<div style="position:relative;top:70px;left:0px;width:630px;">
<asp:Panel runat="server" ID="panel1" ScrollBars="Horizontal" Width="620px">
<table><tr><td>Choose a event:</td>
<td><asp:DropDownList runat="server" ID="ddlevent" AutoPostBack="true" DataSourceID="sqldatasource2" DataTextField="EventName" DataValueField="EventName" OnSelectedIndexChanged="ddlevent_SelectedIndexChanged"></asp:DropDownList></td></tr></table>
<asp:GridView runat="server" ID="gridview1"
            AutoGenerateColumns="false"  DataKeyNames="TeamLeaderEmail" AllowSorting="true"  DataSourceID="sqldatasource1"
            AllowPaging="true" PageSize="10" OnSelectedIndexChanged="gridview1_SelectedIndexChanged">
     <Columns >
     <asp:CommandField ButtonType="Button" ShowSelectButton="true" HeaderText="View details"  SelectText="View"/>
      <asp:BoundField ReadOnly="true" DataField="TeamName" ConvertEmptyStringToNull="true" HeaderText="Team Name" />
     <asp:BoundField ReadOnly="true" DataField="TeamLeaderUserName" ConvertEmptyStringToNull="true" HeaderText="Leader's username" />
       <asp:BoundField ReadOnly="true" DataField="TeamLeaderName" ConvertEmptyStringToNull="true" HeaderText="Team Leader Name" />
    <asp:BoundField ReadOnly="true" DataField="EventName" ConvertEmptyStringToNull="true" headertext="Event Name" />
     <asp:BoundField ReadOnly="true" DataField="CollegeName" ConvertEmptyStringToNull="true" headertext="College Name" />
      <asp:BoundField ReadOnly="true" DataField="TeamLeaderEmail" ConvertEmptyStringToNull="true" headertext="Leader's Email" />
  <asp:BoundField ReadOnly="true" DataField="TeamLeaderMobile" ConvertEmptyStringToNull="true" headertext="Leader's Mobile" />
     </Columns>
    </asp:GridView>
    <asp:ListView runat="server" ID="listview1"  
            ItemPlaceholderID="listviewcontent" 
            >
    <LayoutTemplate >
    <table id="Table1" runat="server" >
    <tr runat="server" id="listviewcontent">
    
    </tr>
    
    </table>
    </LayoutTemplate>
    <ItemTemplate>
    
    <tr>
    <td></td>
    </tr>
    <tr>
    <td>Team Members:</td>
    <td><asp:label runat="server" ID="lblteamleadername" Text='<%#Eval("TeamLeaderName")%>'></asp:label></td>
    <td><asp:Label runat="server" ID="lblteamleaderemail" Text='<%#Eval("TeamLeaderEmail")%>'></asp:Label></td>
    </tr>
    <tr>
    <td></td>
    <td><asp:label runat="server" ID="partner1name" Text='<%#Eval("Partner1Name")%>'></asp:label></td>
    <td><asp:label runat="server" ID="lblpartner1email" Text='<%#Eval("Partner1Email")%>'></asp:label></td>
    </tr>
   <tr>
    <td></td>
    <td><asp:label runat="server" ID="lblpartner2name" Text='<%#Eval("Partner2Name")%>'></asp:label></td>
    <td><asp:label runat="server" ID="lblpartner2email" Text='<%#Eval("Partner2Email")%>'></asp:label></td>
    </tr>
    <tr>
    <td></td>
    <td><asp:label runat="server" ID="lblpartner3name" Text='<%#Eval("Partner3Name")%>'></asp:label></td>
    <td><asp:label runat="server" ID="lblpartner3email" Text='<%#Eval("Partner3Email")%>'></asp:label></td>
    </tr>
    <tr>
    <td></td>
    <td><asp:label runat="server" ID="lblpartner4name" Text='<%#Eval("Partner4Name")%>'></asp:label></td>
    <td><asp:label runat="server" ID="lblpartner4email" Text='<%#Eval("Partner4Email")%>'></asp:label></td>
    </tr>
    
    </ItemTemplate>
    
    
    
    </asp:ListView>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:sqldatasource runat="server" ID="sqldatasource1" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>" SelectCommand="SELECT * FROM [roboKRITI] WHERE [EventName] LIKE (@event)">
    <SelectParameters >
    <asp:Parameter Name="event"  Type="String" />
    </SelectParameters></asp:sqldatasource>
     <asp:sqldatasource runat="server" ID="sqldatasource2" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>" SelectCommand="SELECT * FROM Events">
    </asp:sqldatasource>
</asp:Panel> </div>
</asp:Content>

