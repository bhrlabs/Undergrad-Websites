<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Editing.aspx.cs" Inherits="Editing" Title="Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table>
            <p style="font-family: Aunchanted Bold Oblique" class="style3">
                New Entry</p>
                <tr>
            <td>
                <asp:Label ID="Label17" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                
                <asp:ListItem Text="1upeme" Value="1" Selected="True"></asp:ListItem>
                <asp:ListItem Text="15upgirls" Value="2" ></asp:ListItem>
                <asp:ListItem Text="44upncc" Value="3" ></asp:ListItem>
                <asp:ListItem Text="45upncc" Value="4" ></asp:ListItem>
                <asp:ListItem Text="46upncc" Value="5" ></asp:ListItem>
                <asp:ListItem Text="47upncc" Value="6" ></asp:ListItem>
                <asp:ListItem Text="48upncc" Value="7" ></asp:ListItem>
                <asp:ListItem Text="49upncc" Value="8" ></asp:ListItem>
                <asp:ListItem Text="50upncc" Value="9" ></asp:ListItem>
                <asp:ListItem Text="51upncc" Value="10" ></asp:ListItem>
                <asp:ListItem Text="52upncc" Value="11" ></asp:ListItem>                
                </asp:DropDownList>
            </td>
            
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Registration Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Name of the Cadet"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Rank"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Father's Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Certificate Held'B'/'C'"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Grading"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Current Status"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            
            
            
            
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" /><br />
                    <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="select * from ncc"></asp:SqlDataSource>
        
        <table>
            <p style="font-family: Aunchanted Bold Oblique" class="style3">
                Edit Entry by Registration Number</p>
           <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                
                <asp:ListItem Text="1upeme" Value="1" Selected="True"></asp:ListItem>
                <asp:ListItem Text="15upgirls" Value="2" ></asp:ListItem>
                <asp:ListItem Text="44upncc" Value="3" ></asp:ListItem>
                <asp:ListItem Text="45upncc" Value="4" ></asp:ListItem>
                <asp:ListItem Text="46upncc" Value="5" ></asp:ListItem>
                <asp:ListItem Text="47upncc" Value="6" ></asp:ListItem>
                <asp:ListItem Text="48upncc" Value="7" ></asp:ListItem>
                <asp:ListItem Text="49upncc" Value="8" ></asp:ListItem>
                <asp:ListItem Text="50upncc" Value="9" ></asp:ListItem>
                <asp:ListItem Text="51upncc" Value="10" ></asp:ListItem>
                <asp:ListItem Text="52upncc" Value="11" ></asp:ListItem>                
                </asp:DropDownList>
            </td>
            
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Registration Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Name of the Cadet"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Rank"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Father's Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Certificate Held'B'/'C'"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text="Grading"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Current Status"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
                
                
                
                <tr>
                    <td>
                    </td>
                    <asp:Button ID="Button2" runat="server" Text="Change" onclick="Button2_Click" />
                    <br />
                    <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
                    <td>
                    </td>
                </tr>
        </table>
    </center>
    <br />
    <br />
    <br />
</asp:Content>
