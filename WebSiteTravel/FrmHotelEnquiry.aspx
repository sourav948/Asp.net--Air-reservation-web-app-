<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmHotelEnquiry.aspx.cs" Inherits="Admin_FrmHotelEnquiry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Hotel Enquiry:</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Destination</td>
            <td>
                <asp:DropDownList ID="DDCityid" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="CityName" DataValueField="CityId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblCity]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">
                Check-In Date</td>
            <td style="height: 24px">
                Day&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Year</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DDDay" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="DDMonth" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="DDYear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">
                Check-Out Date</td>
            <td>
                &nbsp; Day&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Year</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DDCOutDay" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:DropDownList ID="DDCOutMonth" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="DDCoutYear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Search Hotels" Width="108px" />
                <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                    Enabled="True" Opacity="4" TargetControlID="Button1">
                </asp:DropShadowExtender>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="172px" 
                    ImageUrl="~/images/goa.jpg" Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="172px" 
                    ImageUrl="~/images/Conference_Hall_goa.jpg" Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="172px" 
                    ImageUrl="~/Lobbyd2.jpg" Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" Height="133px" ImageUrl="~/Room_4.jpg" 
                    Width="207px" />
            </td>
        </tr>
        </table>
                      
 </asp:Content>
