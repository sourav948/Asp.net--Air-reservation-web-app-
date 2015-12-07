<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmPayment.aspx.cs" Inherits="FrmPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Payment Details: 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td style="width: 233px">
                Total Seats Booked</td>
            <td>
                <asp:Label ID="LblTotalSeats" runat="server" Text="Label"></asp:Label>
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
                <asp:Label ID="LblPNR" runat="server" Text="Label"></asp:Label>
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
                <asp:Label ID="LblDestinaion" runat="server" Text="Label"></asp:Label>
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
                <asp:Label ID="LblFlightDate" runat="server" Text="Label"></asp:Label>
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
                <asp:Label ID="LblSeats" runat="server" Text="Label"></asp:Label>
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
                <asp:TextBox ID="TxtCSecurityCode" runat="server"></asp:TextBox>
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
                Total Payment Due</td>
            <td style="margin-left: 80px">
                Rs.<asp:Label ID="LblPayment" runat="server" Text="Label"></asp:Label>
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
                <asp:Label ID="LblConfirm" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 233px">
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblvisit" runat="server" Text="Label"></asp:Label>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

