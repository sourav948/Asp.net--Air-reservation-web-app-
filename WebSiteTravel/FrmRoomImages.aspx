<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmRoomImages.aspx.cs" Inherits="FrmRoomImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" 
        RepeatColumns="3" RepeatDirection="Horizontal" Width="558px" 
        Height="275px">
        <ItemTemplate>
            <asp:Image ID="Image1" ImageUrl='<%#Eval("RoomPic") %>' runat="server" Height="113px" Width="125px" />
        </ItemTemplate>
    </asp:DataList>
    <table style="height: 254px; width: 690px; font-size: medium;">
    <tr> 
    <td>Hotel Room Details</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>&nbsp;</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>Total Rooms Booking:</td> 
    <td>
        <asp:TextBox ID="txtSeats" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtSeats" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr> 
    <td>&nbsp;</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>Total Days Booking:</td> 
    <td>
        <asp:Label ID="lblDays" runat="server"></asp:Label>
        </td>
    </tr>
    
    <tr> 
    <td>&nbsp;</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>Room Category</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>
        <asp:RadioButton ID="RBac" runat="server" AutoPostBack="True" 
            GroupName="roomcat" oncheckedchanged="RBac_CheckedChanged" />
        AC</td> 
    <td>
        <asp:Label ID="LblAC" runat="server"></asp:Label>
        </td>
    </tr>
    
    <tr> 
    <td>
        <asp:RadioButton ID="RBNac" runat="server" AutoPostBack="True" 
            GroupName="roomcat" oncheckedchanged="RBNac_CheckedChanged" />
        Non-Ac</td> 
    <td>
        <asp:Label ID="lblNAC" runat="server"></asp:Label>
        </td>
    </tr>
    
    <tr> 
    <td>&nbsp;</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>Total Fare</td> 
    <td>
        <asp:Label ID="lblfare" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    
    <tr> 
    <td>&nbsp;</td> 
    <td>
        &nbsp;</td>
    </tr>
    
    <tr> 
    <td>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Check Availability" Width="121px" />
        </td> 
    <td>
        &nbsp;</td>
    </tr>
    
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Room Images with Fare:
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
                   <marquee direction="up"><asp:Image ID="Image1" runat="server" Height="172px" 
                    ImageUrl="~/images/Entrance_View.jpg" Width="207px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image2" runat="server" Height="172px" 
                    ImageUrl="~/images/Patio_Restaurant_goa1.jpg" Width="207px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image3" runat="server" Height="172px" 
                    ImageUrl="~/_Hotel_View_1goa1.jpg" Width="207px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image4" runat="server" Height="172px" ImageUrl="~/images/Luxury_Room_2_goa1.jpg" 
                    Width="207px" /></marquee>
            </td>
        </tr>
    </table>
                   
 </asp:Content>
