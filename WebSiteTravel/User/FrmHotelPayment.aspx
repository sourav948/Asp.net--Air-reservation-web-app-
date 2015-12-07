<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="FrmHotelPayment.aspx.cs" Inherits="User_FrmHotelPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
        <tr>
            <td style="text-align: left">
                Hotel Name:</td>
            <td style="text-align: left">
                <asp:Label ID="lblHotelName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                Payment Id:</td>
            <td style="text-align: left">
                <asp:Label ID="lblPayment" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                Room Category:</td>
            <td style="text-align: left">
                <asp:Label ID="lblRoomCat" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                Alloted Rooms No:</td>
            <td style="text-align: left">
                <asp:Label ID="lblRoomNo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                Check-In Date:</td>
            <td style="text-align: left">
                <asp:Label ID="lblCid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                Check-Out Date:</td>
            <td style="text-align: left">
                <asp:Label ID="lblCod" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                CardType:</td>
            <td style="text-align: left">
                <asp:DropDownList ID="DDCardType" runat="server" style="text-align: justify">
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>Debit Card</asp:ListItem>
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
            <td style="text-align: left">
                Card No.:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtCardNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtCardNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                Card Security Code:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtCardSecurityno" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtCardSecurityno" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                Card Expiry Date:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtCardExpiryDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtCardExpiryDate" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                Total Payment Due:</td>
            <td style="text-align: left">
                Rs.
                <asp:Label ID="lblPayDue" runat="server"></asp:Label>
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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Do Payment" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblConfirmed" runat="server" ForeColor="#CC0000"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: right">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Home</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Payment Details:
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
                <asp:Image ID="Image1" runat="server" Height="172px" 
                    ImageUrl="~/User/images/Exterior_View.jpg" Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="172px" 
                    ImageUrl="~/User/images/Conference_Hall_goa.jpg" Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="172px" 
                    ImageUrl="~/Receptiond0.jpg" Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" Height="172px" ImageUrl="~/Room_2.jpg" 
                    Width="207px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="138px" 
                    ImageUrl="~/Swimming_Pool_d1.jpg" Width="207px" />
            </td>
        </tr>
    </table>
 
</asp:Content>

