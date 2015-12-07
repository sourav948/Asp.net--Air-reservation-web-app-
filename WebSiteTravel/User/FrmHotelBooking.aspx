<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="FrmHotelBooking.aspx.cs" Inherits="User_FrmPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Booking Details:
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="text-align: left">
            Hotel Name</td>
        <td style="text-align: left">
            <asp:Label ID="lblHotelName" runat="server" style="text-align: left" 
                Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            Room Category</td>
        <td style="text-align: left">
            <asp:Label ID="lblRoomCat" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            Total Rooms</td>
        <td style="text-align: left">
            <asp:Label ID="lblTotalRooms" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            Alloted Room No</td>
        <td style="text-align: left">
            <asp:Label ID="lblAllotRoom" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            Check-In Date</td>
        <td style="text-align: left">
            <asp:Label ID="lblCinDate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            Check-Out Date</td>
        <td style="text-align: left">
            <asp:Label ID="lblCoutDate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            Total Fare</td>
        <td style="text-align: left">
            <asp:Label ID="lblTotalFare" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: left">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
            <asp:Button ID="Button1" runat="server" Text="Make Payment" Width="116px" 
                onclick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

