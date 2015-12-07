<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlightCancellation.aspx.cs" Inherits="User_FrmFlightCancellation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Flight Booking Cancellation:</span> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
        <tr>
            <td style="width: 255px">
                PNR Id:</td>
            <td>
                <asp:TextBox ID="TxtPNRId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtPNRId" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View Details</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                Source:</td>
            <td>
                <asp:Label ID="lblSource" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 255px">
                Destination:</td>
            <td>
                <asp:Label ID="lblDestination" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 255px">
                Flight Date:</td>
            <td>
                <asp:Label ID="lblFlightDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 255px">
                Seat No:</td>
            <td>
                <asp:Label ID="lblSeatNo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 255px">
                Payment:</td>
            <td>
                <asp:Label ID="lblPayment" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 255px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 255px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Booking Cancel" />
            </td>
            <td style="text-align: right">
                <asp:Label ID="lblCancel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <table style="width: 100%; height: 630px;">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td style="color: #000099; font-size: x-large">
                <asp:Image ID="Image5" runat="server" Height="171px" 
                    ImageUrl="~/images/thCA230H6C.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="197px" 
                    ImageUrl="~/images/thCAL8TNHK.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td style="height: 207px">
                <asp:Image ID="Image2" runat="server" Height="222px" 
                    ImageUrl="~/images/thCA0FEPMM.jpg" Width="217px" />
            </td>
        </tr>
        </table>
                              
   
</asp:Content>

