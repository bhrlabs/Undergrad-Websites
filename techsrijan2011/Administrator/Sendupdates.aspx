<%@ Page Language="VB" MasterPageFile="~/Administrator/adminmaster.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        sqldatasource1.SelectParameters.Item("event").DefaultValue = User.Identity.Name + "%"
    End Sub
    Protected Sub sendtoall_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles sendtoall.Click
        
        
        For Each row As GridViewRow In gridview1.Rows
            Dim teamname As String = row.Cells(0).Text
            Dim username As String = row.Cells(1).Text
            Dim leadername As String = row.Cells(2).Text
            Dim eventname As String = row.Cells(3).Text
            Dim collegename As String = row.Cells(4).Text
            Dim email As String = row.Cells(5).Text
            Dim mobile As String = row.Cells(6).Text
            Dim sqlstring As String = "SELECT * FROM roboKRITI WHERE [TeamName]=(@teamname) AND [TeamLeaderUserName]=(@username) AND [TeamLeaderName]=(@leader) AND [EventName]=(@event) AND [CollegeName]=(@college) AND [TeamLeaderEmail]=(@email) AND [TeamLeaderMobile]=(@mobile)"
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlstring, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@teamname", teamname)
            cmd.Parameters.AddWithValue("@username", username)
            cmd.Parameters.AddWithValue("@leader", leadername)
            cmd.Parameters.AddWithValue("@event", eventname)
            cmd.Parameters.AddWithValue("@college", collegename)
            cmd.Parameters.AddWithValue("@email", email)
            cmd.Parameters.AddWithValue("@mobile", mobile)
            Dim dreader As SqlDataReader
            dreader = cmd.ExecuteReader
            While (dreader.Read)
                Dim partner1email As String = dreader("Partner1Email").ToString
                Dim partner2email As String = dreader("Partner2Email").ToString
                Dim partner3email As String = dreader("Partner3Email").ToString
                Dim partner4email As String = dreader("Partner4Email").ToString
                senddata(email, partner1email, partner2email, partner3email, partner4email)
            
            End While
            cmd.Parameters.Clear()
            myconnection.Close()
        Next

    End Sub
   
    Protected Sub sendtocheck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles sendtocheck.Click
        For Each row As GridViewRow In gridview1.Rows
            Dim check As CheckBox = CType(row.FindControl("checkbox1"), CheckBox)
            If (check.Checked = "true") Then
                Dim teamname As String = row.Cells(0).Text
                Dim username As String = row.Cells(1).Text
                Dim leadername As String = row.Cells(2).Text
                Dim eventname As String = row.Cells(3).Text
                Dim collegename As String = row.Cells(4).Text
                Dim email As String = row.Cells(5).Text
                Dim mobile As String = row.Cells(6).Text
                Dim sqlstring As String = "SELECT * FROM roboKRITI WHERE [TeamName]=(@teamname) AND [TeamLeaderUserName]=(@username) AND [TeamLeaderName]=(@leader) AND [EventName]=(@event) AND [CollegeName]=(@college) AND [TeamLeaderEmail]=(@email) AND [TeamLeaderMobile]=(@mobile)"
                Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
                Dim myconnection As New SqlConnection(connectionstring)
                Dim cmd As New SqlCommand(sqlstring, myconnection)
                myconnection.Open()
                cmd.Parameters.AddWithValue("@teamname", teamname)
                cmd.Parameters.AddWithValue("@username", username)
                cmd.Parameters.AddWithValue("@leader", leadername)
                cmd.Parameters.AddWithValue("@event", eventname)
                cmd.Parameters.AddWithValue("@college", collegename)
                cmd.Parameters.AddWithValue("@email", email)
                cmd.Parameters.AddWithValue("@mobile", mobile)
                Dim dreader As SqlDataReader
                dreader = cmd.ExecuteReader
                While (dreader.Read)
                    Dim partner1email As String = dreader("Partner1Email").ToString
                    Dim partner2email As String = dreader("Partner2Email").ToString
                    Dim partner3email As String = dreader("Partner3Email").ToString
                    Dim partner4email As String = dreader("Partner4Email").ToString
                    senddata(email, partner1email, partner2email, partner3email, partner4email)
                End While
                cmd.Parameters.Clear()
                myconnection.Close()
            End If
        Next
        lblmsg.Text = "Update sent"
        Response.Redirect("Admin.aspx")
    End Sub
    Protected Sub senddata(ByVal email As String, ByVal partner1email As String, ByVal partner2email As String, ByVal partner3email As String, ByVal partner4email As String)
        
        If (email IsNot "") Then
            Dim sqlquery As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES(@sendto,@sendby,@title,@body,@date,@insert) "
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlquery, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@sendto", email)
            cmd.Parameters.AddWithValue("@sendby", User.Identity.Name)
            cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@body", txtBody.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString())
            cmd.Parameters.AddWithValue("@insert", "0")
            cmd.ExecuteNonQuery()
            myconnection.Close()
        End If
        If (partner1email IsNot "") Then
            Dim sqlquery As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES(@sendto,@sendby,@title,@body,@date,@insert) "
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlquery, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@sendto", partner1email)
            cmd.Parameters.AddWithValue("@sendby", User.Identity.Name)
            cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@body", txtBody.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString())
            cmd.Parameters.AddWithValue("@insert", "0")
            cmd.ExecuteNonQuery()
            myconnection.Close()
        End If
        If (partner2email IsNot "") Then
            Dim sqlquery As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES(@sendto,@sendby,@title,@body,@date,@insert) "
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlquery, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@sendto", partner2email)
            cmd.Parameters.AddWithValue("@sendby", User.Identity.Name)
            cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@body", txtBody.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString())
            cmd.Parameters.AddWithValue("@insert", "0")
            cmd.ExecuteNonQuery()
            myconnection.Close()
        End If
        If (partner3email IsNot "") Then
            Dim sqlquery As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES(@sendto,@sendby,@title,@body,@date,@insert) "
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlquery, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@sendto", partner3email)
            cmd.Parameters.AddWithValue("@sendby", User.Identity.Name)
            cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@body", txtBody.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString())
            cmd.Parameters.AddWithValue("@insert", "0")
            cmd.ExecuteNonQuery()
            myconnection.Close()
        End If
        If (partner4email IsNot "") Then
            Dim sqlquery As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES(@sendto,@sendby,@title,@body,@date,@insert) "
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlquery, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@sendto", partner4email)
            cmd.Parameters.AddWithValue("@sendby", User.Identity.Name)
            cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@body", txtBody.Text.Trim.ToString)
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString())
            cmd.Parameters.AddWithValue("@insert", "0")
            cmd.ExecuteNonQuery()
            myconnection.Close()
        End If
        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="adminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteradmin" Runat="Server">
<div style="position:relative;top:40px;left:20px;">
<asp:label runat="server" ID="lblmsg" text=""></asp:label>
</div>
<div style="position:relative;top:70px;width:630px;">
<asp:Panel runat="server" ID="panel1" ScrollBars="Horizontal" Width="620px">
<asp:GridView runat="server" ID="gridview1" DataSourceID="sqldatasource1" AutoGenerateColumns="false"  DataKeyNames="TeamLeaderEmail" AllowSorting="true" AllowPaging="true" PageSize="3" >
     <Columns >
      <asp:BoundField ReadOnly="true" DataField="TeamName" ConvertEmptyStringToNull="true" HeaderText="Team Name" />
     <asp:BoundField ReadOnly="true" DataField="TeamLeaderUserName" ConvertEmptyStringToNull="true" HeaderText="Leader's username" />
       <asp:BoundField ReadOnly="true" DataField="TeamLeaderName" ConvertEmptyStringToNull="true" HeaderText="Team Leader Name" />
    <asp:BoundField ReadOnly="true" DataField="EventName" ConvertEmptyStringToNull="true" headertext="Event Name" />
     <asp:BoundField ReadOnly="true" DataField="CollegeName" ConvertEmptyStringToNull="true" headertext="College Name" />
      <asp:BoundField ReadOnly="true" DataField="TeamLeaderEmail" ConvertEmptyStringToNull="true" headertext="Leader's Email" />
  <asp:BoundField ReadOnly="true" DataField="TeamLeaderMobile" ConvertEmptyStringToNull="true" headertext="Leader's Mobile" />
     <asp:TemplateField HeaderText="Select">
     <ItemTemplate >
     <asp:CheckBox runat="server" ID="checkbox1" />
     </ItemTemplate>
     
     </asp:TemplateField></Columns>
    </asp:GridView>
    <table >
    <tr  >
    <td style="position:relative;width:50px;font-weight:bold;font-size:13px;">Title:</td><td colspan="2" id="title" align="left" ><asp:TextBox runat="server" ID="txtTitle" Width="300px"> </asp:TextBox>
    </td></tr>
    <tr><td style="position:relative;width:50px;font-weight:bold;font-size:13px;">Message:</td>
    
    <td id="body" width="550px" align="left" ><asp:TextBox width="500px"  Height="300px" runat="server" ID="txtBody" Text="" TextMode="MultiLine" ></asp:TextBox></td>
    </tr>
    <tr>
    <td><asp:Button runat="server" ID="sendtoall" Text="Send To All" 
            style="margin-bottom: 0px" /></td>
    <td><asp:Button runat="server" ID="sendtocheck" text="Send to Selected" /><br /></td>
    </tr> 
    
    
    </table>
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
    <br />
    </asp:Panel> </div> 
</asp:Content>

