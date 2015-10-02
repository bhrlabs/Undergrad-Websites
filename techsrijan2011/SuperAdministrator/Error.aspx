<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>

<script runat="server">

    Protected Sub gridview1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs)
        gridview1.PageIndex = e.NewPageIndex
        gridview1.DataBind()
        
    End Sub

    Protected Sub gridview1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        gridview1.DeleteRow(gridview1.SelectedIndex)
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" Runat="Server">
<div style="position:relative;top:70px;left:70px;width:550px;overflow: scroll;">
<asp:GridView runat="server" ID="gridview1" DataKeyNames="Date"  DataSourceID="sqldatasource1" AllowPaging="true" PageSize="10" OnPageIndexChanging="gridview1_PageIndexChanging" OnSelectedIndexChanged="gridview1_SelectedIndexChanged">
 <Columns >
 <asp:ButtonField CommandName="Select" Text="delete" />
 </Columns>
</asp:GridView>
<asp:SqlDataSource id="sqldatasource1" runat="server" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>" SelectCommand="SELECT * FROM Errors" DeleteCommand="DELETE FROM Errors WHERE [DATE]=(@date)">
<DeleteParameters>
<asp:ControlParameter ControlID="gridview1"  PropertyName="selectedvalue"/>
</DeleteParameters>
</asp:SqlDataSource>
</div>
</asp:Content>

