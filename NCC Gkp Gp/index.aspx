<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: justify;
        }
        .style5
        {
            font-weight: normal;
        }
        .style6
        {
            color: #000000;
            font-size: large;
        }
    .style7
    {
        font-size: large;
    }
        .style8
        {
            font-weight: normal;
        }
        .style9
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table>
            <tr>
                <td>
                    <p class="style4">
                        <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <span class="style8">&nbsp;National Cadet Corps is a
                            Tri-Services Organisation comprising the Army, Navy and Air Force, engaged in grooming
                            the youth – <strong>‘The Leaders of Tomorrow’</strong> – into disciplined and patriotic
                            citizens. The genesis of the NCC can be traced back to the First World War when
                            the Britishers created the University Corps as the second line of defense and to
                            have a large pool of trained youth available for employment into the Armed Forces.
                            After independence the present day NCC under the Ministry of Defence came into existence
                            on 16 Apr 1948 through NCC act XXXI, 1948. </span>
                    </p>
                    <p class="style6">
                        <center class="style7">
                            <strong>N.C.C. Group Headquarter, Gorakhpur</strong></center>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="style4">
                            <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <span class="style8">N.C.C. Group Headquarter, Gorakhpur was raised on 6th 
                            April, 1963, under the stewardship of Lt Col SN Tiwari. Col Uday Singh 
                            Chauhan is the present Group Commander. The Group Headquarter has 12 Battalions 
                            under its command, spread over in 11 districts of Eastern U.P. Gorakhpur Group 
                            has been the reigning champion for the last two training years in N.C.C. 
                            Directorate (U.P) </span>
                            <span class="style5"> <strong><em>
                                    <span class="style8">
                                </span>
                                </em></strong></span>
                        </p>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="2px" Height="371px"
                        ImageUrl="~/Images/head.jpg" /><br />
                    <center>
                        <asp:Label ID="Label1" runat="server" Text="Governor's Banner for the Champion Group"></asp:Label></center>
                </td>
            </tr>
        </table>
    </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
