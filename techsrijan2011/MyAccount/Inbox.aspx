<%@ Page Language="VB" MasterPageFile="~/MyAccount/Masteraccount.master" Title="ts2011-MyAccount" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim usr As MembershipUser = Membership.GetUser
        Dim email As String = usr.Email
        sqldatasource1.SelectParameters.Item("email").DefaultValue = email
        If(Not Page.IsPostBack ) then
        lblmsg.Text=""
        
        End If 
    End Sub

    Protected Sub LinkClicked(ByVal sender As Object, ByVal e As CommandEventArgs)
        If e.CommandName = "OnClick" Then
            Dim usr As MembershipUser = Membership.GetUser
            Dim email As String = usr.Email
            
            Dim arraysplit() As String = e.CommandArgument.ToString.Split("|")
            Dim txttitle As String = arraysplit(0)
            Dim txtsentby As String = arraysplit(1)
            Dim txtdatetime As String = arraysplit(2)
            Dim txtbody As String = arraysplit(3)
            Dim sqlstring As String = "UPDATE inbox SET [check]='1' WHERE [SendTo]=(@sendto) AND [SentBy]=(@sentby) AND [Title]=(@title) AND [Body]=(@body) AND [Date]=(@date)"
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
            lbldate.Text = "On " + txtdatetime
            lbltitle.Text = txttitle
            lblsentby.Text = "Sent by " + txtsentby
            
            
        End If
    End Sub
   

   

    Protected Sub btncompose_Command(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.CommandEventArgs)
        If (e.CommandName = "OnClick") Then
            multiview1.ActiveViewIndex = 2
        End If
    End Sub

    Protected Sub multiview1_ActiveViewChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        If (multiview1.ActiveViewIndex = 2) Then
            ddlevent.Items.Add(New ListItem("Select a event", "0"))
            ddlevent.SelectedValue = "0"
            textbody.Text = String.Empty
            texttitle.Text = String.Empty
            lblmsg.Text=""
        End If
        If(multiview1.ActiveViewIndex=1) then
         lblmsg.Text=""
        End If 
      
    End Sub
    

    Protected Sub btnsubmitmail_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim usr As MembershipUser = Membership.GetUser
        Dim email As String = usr.Email
        Dim sqlstring As String = "INSERT INTO inbox([SendTo],[SentBy],[Title],[Body],[Date],[check]) VALUES((@sendto),(@sentby),(@title),(@body),(@date),(@check))"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        myconnection.Open()
        cmd.Parameters.AddWithValue("@sendto", ddlevent.SelectedValue)
        cmd.Parameters.AddWithValue("@sentby", email)
        cmd.Parameters.AddWithValue("@title", texttitle.Text)
        cmd.Parameters.AddWithValue("@body", textbody.Text)
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString)
        cmd.Parameters.AddWithValue("@check", "0")
        cmd.ExecuteNonQuery()
        myconnection.Close()
        lblmsg.Text = "mail sent"
        multiview1.ActiveViewIndex = 0
    End Sub

   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="accounthead" Runat="Server">
<style type="text/css" >
th
{
    height:50px;
    background-color: Silver ;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteraccount1" Runat="Server">
<div style="position:relative;top:40px;left:25px;width:35px;"><table>
     <tr><td><asp:label runat="server" ID="lblmsg" text=""></asp:label></td></tr>
  <tr><td style="position:relative; border-bottom:solid 3px #6464EF;"><asp:LinkButton runat="server" ID="btncompose"  Font-Underline="false" CommandName="OnClick" Text="Compose" OnCommand="btncompose_Command" Font-Bold="true" Font-Size="17px"></asp:LinkButton></td></tr>
  </table> 
  </div> 
  
    <div style="position:relative;top:70px;left:20px; font-family:bold;font-size:15px;">
    <asp:MultiView runat="server" ID="multiview1" ActiveViewIndex="0" OnActiveViewChanged="multiview1_ActiveViewChanged">
    <asp:View runat="server" ID="view1">
    <asp:ListView runat="server" ID="listview1" ItemPlaceholderID="listviewcontent" datasourceid="sqldatasource1" >
    <LayoutTemplate >
    <table id="Table1" runat="server" >
    <thead >
    <tr id="Tr1" runat="server"  >
    <th style="background-color:#BAD8EF; " >hew</th>
    <th  style="width:300px;background-color:#BAD8EF;" id="Th1"  >Message</th>
    <th style="background-color:#BAD8EF;" id="Th2"  >Sent By</th>
    <th style="background-color:#BAD8EF;" id="Th3" >On Date</th>
    </tr>
    </thead> 
    <tr runat="server" id="listviewcontent"></tr>
    <tr><td colspan="4" style="background-color:#BAD8EF;">
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
    <td style="background-color:#D8D8D8;"><asp:LinkButton ID="neotitle" runat="server" Text='<%#Eval("Title")%>' CommandArgument='<%#Eval("Title")+"|"+Eval("SentBy")+"|"+Eval("Date")+"|"+Eval("Body")%>' CommandName="OnClick" oncommand="LinkClicked"></asp:LinkButton></td>
    <td style="background-color:#D8D8D8;"><asp:label runat="server" ID="neosentby" Text='<%#Eval("SentBy") %>'></asp:label></td>
    <td style="background-color:#D8D8D8;"><asp:label runat="server" ID="neodate" Text='<%#Eval("Date")%>'></asp:label></td>
    </tr>
    </ItemTemplate>
    <EmptydataTemplate >
    Currently no message in record
    </EmptydataTemplate>
    </asp:ListView>
    
    
    
    </asp:View>
    <asp:View runat="server" ID="view2">
    <table style="position:relative;font-family:bold;font-size:15px;">
    <tr><td colspan="2"></td></tr>
    <tr><td colspan="2"></td></tr>
    <tr><td colspan="2" style="position:relative;"><asp:Label runat="server" Font-BolD="true" Font-SIZE="14px" id="lbltitle"></asp:Label></td></tr>
    <tr><td style="position:relative;font-family:bold;font-size:15px;"><asp:Label  Font-BolD="true" Font-SIZE="14px" runat="server" ID="lblsentby"></asp:Label></td>
    <td style="position:relative;font-family:bold;font-size:15px;"><asp:Label  Font-BolD="true" Font-SIZE="14px" runat="server" ID="lbldate"></asp:Label></td>
    </tr>
    <tr><td colspan="2">
    <asp:TextBox runat="server" ID="lblbody" width="505px" Height="300px"  BackColor="#Fefee7" Font-BolD="true" Font-SIZE="14px" readonly="true"  BorderWidth="3px"   Wrap="true" TextMode="MultiLine"  ></asp:TextBox>
     </td></tr>
    </table>
    <br />
    <br /><br />
    <br />
    <br />
        <br />
    </asp:View>
    <asp:View runat="server" ID="view3">
    <table><tr><td colspan="2" align="left" ><asp:Label runat="server" ID="lblevent" Text="Choose the event co-ordinator you want to send your message"></asp:Label> <asp:DropDownList runat="server" ID="ddlevent" DataSourceID="sqldatasource2" AppendDataBoundItems="true" AutoPostBack="true" DataValueField="EventName"></asp:DropDownList>
    <asp:RequiredFieldValidator runat="server"  ID="requiredfieldvalidator1" InitialValue="0" ControlToValidate="ddlevent" ErrorMessage="Choose a event"></asp:RequiredFieldValidator></td>
 </tr>
    <tr><td style="position:relative;"><asp:Label ID="title1"  runat="server" Text="Title"></asp:Label><asp:TextBox ID="texttitle" runat="server" Width="300px"   BorderWidth="3px" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="texttitle" ErrorMessage="Title should not be more than 35 characters" ValidationExpression="^[\s\S]{0,35}$"></asp:RegularExpressionValidator>
    </td></tr>
        
    <tr><td colspan="2"><asp:TextBox runat="server" id="textbody" Width="500px" Wrap="true"  Height="300px" borderwidth="3px" TextMode="MultiLine" ></asp:TextBox></td></tr>
   <tr ><td align="right" > <asp:Button runat="server" ID="btnsubmitmail" Text="Send message" OnClick="btnsubmitmail_Click" /><asp:RequiredFieldValidator runat="server" ID="Requiredfieldvalidator2" ControlToValidate="textbody" ErrorMessage="Message should not be empty"></asp:RequiredFieldValidator></td>
   </tr>
   <tr><td><asp:RequiredFieldValidator runat="server" ID="requiredfieldvalidator3" ControlToValidate="texttitle" ErrorMessage="Title should not be empty"></asp:RequiredFieldValidator></td></tr> 
    <tr><td><asp:RegularExpressionValidator ID="regexp1" runat="server" ControlToValidate="textbody" ErrorMessage="Message should not be more than 500 characters" ValidationExpression="^[\s\S]{0,500}$"></asp:RegularExpressionValidator></td></tr>
        
     
     </table> 
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
    </asp:View>
   </asp:MultiView>
<asp:SqlDataSource runat="server" ID="sqldatasource1" SelectCommand="SELECT * FROM inbox WHERE [SendTo]=(@email)" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>">
<SelectParameters >
<asp:Parameter Name="email" Type="String" />
</SelectParameters>

</asp:SqlDataSource>
    
    <asp:SqlDataSource ID="sqldatasource2" runat="server"  SelectCommand="SELECT [EventName] FROM Events" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>">
    </asp:SqlDataSource></div>
</asp:Content>

