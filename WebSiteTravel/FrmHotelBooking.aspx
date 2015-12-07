<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmHotelBooking.aspx.cs" Inherits="User_FrmPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
    <tr>
        <td style="text-align: left; width: 254px;">
            Hotel Name:</td>
        <td style="text-align: left">
            <asp:Label ID="lblHotelName" runat="server" style="text-align: left"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            Room Category:</td>
        <td style="text-align: left">
            <asp:Label ID="lblRoomCat" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            Total Rooms:</td>
        <td style="text-align: left">
            <asp:Label ID="lblTotalRooms" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            &nbsp;</td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 254px">
            Total Days:</td>
        <td>
            <asp:Label ID="lblDays" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            Alloted Room No:</td>
        <td style="text-align: left">
            <asp:Label ID="lblAllotRoom" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            Check-In Date:</td>
        <td style="text-align: left">
            <asp:Label ID="lblCinDate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            Check-Out Date:</td>
        <td style="text-align: left">
            <asp:Label ID="lblCoutDate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            Total Fare:</td>
        <td style="text-align: left">
            <asp:Label ID="lblTotalFare" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left; width: 254px;">
            <asp:Button ID="Button1" runat="server" Text="Make Payment" Width="116px" 
                onclick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Booking Details:</span> 
</asp:Content>

 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
       <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image1" runat="server" Height="172px" 
                    ImageUrl="~/images/images (1).jpg" Width="207px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image3" runat="server" Height="172px" 
                    ImageUrl="~/images/images (8).jpg" Width="207px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
               <marquee direction="up"> <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/images/Room_7d1.jpg" 
                    Width="207px" /></marquee>
            </td>
        </tr>
        </table>
                       
 </asp:Content>
