<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmEnquiry.aspx.cs" Inherits="FrmEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="height: 309px; width: 704px; font-size: medium; color: #000000;">
        <tr>
            <td>
                Source</td>
            <td colspan="3">
                <asp:DropDownList ID="DdlSource" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Source" 
                    >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="select distinct source from tblroutes"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Destination</td>
            <td colspan="3">
                <asp:DropDownList ID="DdlDestination" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Destination" 
                    >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT distinct destination FROM [tblRoutes]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="3">
                Date of Journey</td>
            <td>
                Day
                </td>
            <td>
                Month</td>
            <td>
                Year<br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DdDay" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DdMonth" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DDyear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">
                Required Seats </td>
            <td>
                Child</td>
            <td>
                Adult</td>
            <td>
                S.Citizen</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtChild" runat="server" Height="16px" Width="71px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtChild" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAdult" runat="server" Height="16px" Width="76px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAdult" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtSCitizen" runat="server" Height="20px" 
                    Width="76px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtSCitizen" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Check Availability" />
            </td>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Flight Enquiry:
</span>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image1" runat="server" Height="171px" 
                    ImageUrl="~/images/thCA230H6C.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image2" runat="server" Height="171px" 
                    ImageUrl="~/images/thCA0FEPMM.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
               <marquee direction="up"> <asp:Image ID="Image3" runat="server" Height="171px" ImageUrl="~/images/th.jpg" 
                    Width="224px" /></marquee>
            </td>
        </tr>
        
        
    </table>
    
</asp:Content>

