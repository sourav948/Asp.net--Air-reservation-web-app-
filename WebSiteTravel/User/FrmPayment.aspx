<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="FrmPayment.aspx.cs" Inherits="FrmPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="width: 555px; height: 612px; background-color: #56B6B6; font-size: medium; color: #000000;" 
        bgcolor="#66CCFF">
        <tr>
            <td style="width: 233px">
                Total Seats Booked</td>
            <td>
                <asp:Label ID="LblTotalSeats" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                PNR Id</td>
            <td>
                <asp:Label ID="LblPNR" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                Source</td>
            <td>
                Destination</td>
        </tr>
        <tr>
            <td style="width: 233px">
                <asp:Label ID="LblSource" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LblDestinaion" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                Flight Date</td>
            <td>
                <asp:Label ID="LblFlightDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                Seats No.</td>
            <td>
                <asp:Label ID="LblSeats" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                CardType</td>
            <td>
                <asp:DropDownList ID="DDCard" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                Card No.</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TxtCCardNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtCCardNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                Card Security Code</td>
            <td>
                <asp:TextBox ID="TxtCSecurityCode" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtCSecurityCode" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                Card Expiry Date</td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="TxtCExpiryDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtCExpiryDate" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px; height: 25px;">
                Total Payment Due</td>
            <td style="margin-left: 80px; height: 25px;">
                Rs.<asp:Label ID="LblPayment" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">
                <asp:Button ID="Button1" runat="server" Text="Do Payment" 
                    onclick="Button1_Click" />
            </td>
            <td style="margin-left: 80px">
                <asp:Label ID="LblConfirm" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblvisit" runat="server" Text="Label"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Home</asp:LinkButton>
                &nbsp;</td>
        </tr>
    </table>
  </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Payment Details:</span> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td style="color: #000099; font-size: x-large">
                <asp:Image ID="Image7" runat="server" Height="171px" 
                    ImageUrl="~/images/thCAUGQYHA.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="171px" 
                    ImageUrl="~/images/thCAL8TNHK.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="171px" 
                    ImageUrl="~/images/thCA0FEPMM.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="171px" ImageUrl="~/images/th.jpg" 
                    Width="224px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" Height="192px" 
                    ImageUrl="~/images/thCA1TUF9X.jpg" Width="224px" />
            </td>
        </tr>
    </table>
                              
   
</asp:Content>
