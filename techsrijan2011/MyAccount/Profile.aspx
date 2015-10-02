<%@ Page Language="VB" MasterPageFile="~/MyAccount/Masteraccount.master" Title="Profile" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        sqldatasource1.SelectParameters.Item("UserName").DefaultValue = User.Identity.Name
        sqldatasource1.UpdateParameters.Item("UserName").DefaultValue = User.Identity.Name
    End Sub

    Protected Sub sqldatasource1_Updated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs)
        
       
    End Sub

    Protected Sub ListView1_ItemEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewEditEventArgs)

    End Sub

    Protected Sub ListView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewCommandEventArgs)
        If (e.CommandName = "Update") Then
            Dim arrsplit() As String = e.CommandArgument.ToString.Split("|")
            Dim txtname As String = arrsplit(0)
            Dim txtcollege As String = arrsplit(1)
            Dim txtmobile As String = arrsplit(5)
            Dim usr As MembershipUser = Membership.GetUser(User.Identity.Name)
            Dim mail As String = usr.Email
            Dim sqlstring As String = "UPDATE [roboKRITI] SET [TeamLeaderName]=(@name),[CollegeName]=(@college),[TeamLeaderMobile]=(@mobile) WHERE [TeamLeaderEmail]=(@email)"
            Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myconnection As New SqlConnection(connectionstring)
            Dim cmd As New SqlCommand(sqlstring, myconnection)
            myconnection.Open()
            cmd.Parameters.AddWithValue("@name", txtname)
            cmd.Parameters.AddWithValue("@college", txtcollege)
            cmd.Parameters.AddWithValue("@mobile", txtmobile)
            cmd.Parameters.AddWithValue("@email", mail)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            Dim sqlstring1 As String = "UPDATE [roboKRITI] SET [Partner1Name]=(@name) WHERE [Partner1Email]=(@email)"
            Dim myconnection1 As New SqlConnection(connectionstring)
            Dim cmd1 As New SqlCommand(sqlstring1, myconnection1)
            myconnection1.Open()
            cmd1.Parameters.AddWithValue("@name", txtname)
            cmd1.Parameters.AddWithValue("@email", mail)
            cmd1.ExecuteNonQuery()
            myconnection1.Close()
            Dim sqlstring2 As String = "UPDATE [roboKRITI] SET [Partner2Name]=(@name) WHERE [Partner2Email]=(@email)"
            Dim myconnection2 As New SqlConnection(connectionstring)
            Dim cmd2 As New SqlCommand(sqlstring2, myconnection2)
            myconnection2.Open()
            cmd2.Parameters.AddWithValue("@name", txtname)
            cmd2.Parameters.AddWithValue("@email", mail)
            cmd2.ExecuteNonQuery()
            myconnection2.Close()
            Dim sqlstring3 As String = "UPDATE [roboKRITI] SET [Partner3Name]=(@name) WHERE [Partner3Email]=(@email)"
            Dim myconnection3 As New SqlConnection(connectionstring)
            Dim cmd3 As New SqlCommand(sqlstring3, myconnection3)
            myconnection3.Open()
            cmd3.Parameters.AddWithValue("@name", txtname)
            cmd3.Parameters.AddWithValue("@email", mail)
            cmd3.ExecuteNonQuery()
            myconnection3.Close()
            Dim sqlstring4 As String = "UPDATE [roboKRITI] SET [Partner4Name]=(@name) WHERE [Partner4Email]=(@email)"
            Dim myconnection4 As New SqlConnection(connectionstring)
            Dim cmd4 As New SqlCommand(sqlstring4, myconnection4)
            myconnection4.Open()
            cmd4.Parameters.AddWithValue("@name", txtname)
            cmd4.Parameters.AddWithValue("@email", mail)
            cmd4.ExecuteNonQuery()
            myconnection4.Close()
        End If
    End Sub
</script>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="accounthead" Runat="Server">
<style type="text/css" >
table,tr,td
{
   
}
</style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="masteraccount1" Runat="Server">
<div style="position:relative;top:50px;left:70px;font-weight:bold; font-size:medium; color: #FFFFFF;">

<asp:ListView ID="ListView1"
	runat="server"
	DataSourceID="sqldatasource1"
	ItemPlaceholderID="ListViewContent" OnItemEditing="ListView1_ItemEditing" OnItemCommand="ListView1_ItemCommand">
	<LayoutTemplate>
		<table id="Table1" runat="server" style="position:relative;">
		<tr id="Tr1" runat="server" >
		<td id="Td1" runat="server" >
		<table id="Table2" runat="server" >
	
		
		<tr id="Tr2" runat="server" style="position:relative;height:38px;">
		<td>
		Full Name
		</td>
		</tr>
		<tr id="Tr3"  runat="server" style="position:relative;height:38px;">
		<td>
		College Name
		</td>
		</tr>
		<tr id="Tr4"  runat="server" style="position:relative;height:38px;">
		<td>
		Branch Name
		</td>
		</tr >
		<tr id="Tr5" runat="server"  style="position:relative;height:38px;">
		<td>
		Year Name
		</td>
		</tr>
		<tr id="Tr6" runat="server"  style="position:relative;height:38px;">
		<td>
		City Name
		</td>
		</tr>
		<tr id="Tr7"  runat="server"  style="position:relative;height:38px;">
		<td>
		Mobile No
		</td>
		</tr>
		</table>
		
		</td>
		
		<td id="Td2" runat="server" >
		<table id="Table3" runat="server" >
		
		<tr id="listviewcontent" runat="server" >
		</tr>
		</table>
		</td>
		</tr>
		
		</table>
	</LayoutTemplate>
	<ItemTemplate>
	<tr style="position:relative;height:28px;"><td></td></tr>
		<tr style="position:relative;height:38px;">
		<td><%# Eval("FullName") %></td>
		
	    </tr>
	    <tr style="position:relative;height:38px;">
	    <td><%# Eval("CollegeName") %></td>
	    
		</tr>
		
		<tr style="position:relative;height:38px;">
			<td >
				<%#Eval("BranchName")%>
				</td>
				
		</tr>
		<tr style="position:relative;height:38px;">
			<td >
				<%#Eval("YearName")%>
				</td>
				
		</tr>
		<tr style="position:relative;height:38px;">
			<td >
				<%#Eval("CityName")%>
				</td>
			
		</tr>
		<tr style="position:relative;height:38px;">
			<td >
				<%#Eval("ContactNo")%>
				</td>
				
		</tr>
		<tr><td><td><asp:Button id="editButton2" runat="server" commandname="edit" text="Edit" /></td></td></tr>
	</ItemTemplate>
	<EditItemTemplate >
	<tr style="position:relative;height:28px;"><td></td></tr>
		<tr style="position:relative;height:38px;">
			    <td><asp:textbox ID="textbox1" runat="server" Text='<%# Bind("FullName") %>'></asp:textbox></td>
			    <td><asp:RequiredFieldValidator runat="server" ID="reqfield1" ControlToValidate="textbox1" ValidationGroup="profile" >Fullname cannot be empty</asp:RequiredFieldValidator></td>
		
	    </tr>
	    <tr style="position:relative;height:38px;">

	   <td><asp:textbox ID="textbox2" runat="server" Text='<%# Bind("CollegeName") %>'></asp:textbox></td>
		<td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="textbox2" ValidationGroup="profile" >Collegename cannot be empty</asp:RequiredFieldValidator></td>
		</tr>
		<tr style="position:relative;height:38px;">
			<td><asp:textbox ID="textbox3" runat="server" Text='<%# Bind("BranchName") %>'></asp:textbox></td>
				<td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="textbox3" ValidationGroup="profile" >Branchname cannot be empty</asp:RequiredFieldValidator></td>
		</tr>
	<tr style="position:relative;height:38px;">
			<td><asp:textbox ID="textbox4" runat="server" Text='<%# Bind("YearName") %>'></asp:textbox></td>
			<td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="textbox4" ValidationGroup="profile" >Yearname cannot be empty</asp:RequiredFieldValidator></td>	
		</tr>
	<tr style="position:relative;height:38px;">
			<td><asp:textbox ID="textbox5" runat="server" Text='<%# Bind("CityName") %>'></asp:textbox></td>
			<td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="textbox5" ValidationGroup="profile" >Cityname cannot be empty</asp:RequiredFieldValidator></td>	
		</tr>
	<tr style="position:relative;height:38px;">
			<td><asp:textbox ID="textbox6" runat="server" Text='<%# Bind("ContactNo") %>'></asp:textbox></td>
			<td><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="textbox6" ValidationGroup="profile" >Contactno cannot be empty</asp:RequiredFieldValidator></td>	
		</tr>
	<tr><td><asp:Button id="updatebutton1" runat="server" commandname="Update" text="Update" CommandArgument='<%#Eval("FullName")+"|"+Eval("CollegeName")+"|"+Eval("BranchName")+"|"+Eval("YearName")+"|"+Eval("CityName")+"|"+Eval("ContactNo") %>' CausesValidation="true" ValidationGroup="profile" /></td>
		<td><asp:Button ID="cancelbutton1" runat="server" CommandName="Cancel" Text="Cancel" /></td></tr>
	</EditItemTemplate>
	<emptydatatemplate>
	
	Currently no profile data in record
	</EmptyDataTemplate>
</asp:ListView>
 <asp:SqlDataSource ID="sqldatasource1" runat="server" SelectCommand="SELECT * FROM [Registrationdata] WHERE ([UserName]=(@UserName))"
UpdateCommand="UPDATE [Registrationdata] SET [FullName]=@FullName,[CollegeName]=@CollegeName,[BranchName]=@BranchName,[YearName]=@yearname,[CityName]=@cityname,[ContactNo]=@contactno WHERE ([UserName]=(@UserName))" 
ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>" OnUpdated="sqldatasource1_Updated">
 <SelectParameters>
 <asp:parameter Name="UserName" Type="String" />
 </SelectParameters> 
 <UpdateParameters >
 <asp:Parameter Name="FullName" Type="String" />
 <asp:Parameter Name="CollegeName" Type="String" />
 <asp:Parameter Name="BranchName" Type="String" />
 <asp:Parameter Name="YearName" Type="String" />
 <asp:Parameter Name="CityName" Type="String" />
 <asp:Parameter Name="ContactNo" Type="String" />
 <asp:Parameter Name="UserName" Type="String" />
 </UpdateParameters>
 </asp:SqlDataSource>   
 </div>         <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
</asp:Content>

