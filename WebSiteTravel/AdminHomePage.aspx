<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Welcome To Our Site:-
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        The main objective of this project is to provide facilities of travelling like 
        buses, railways and flights for the tourist and also the facility of booking 
        hotels at the tourist places.
    </p>
    <table style="width: 97%; height: 184px">
        <tr>
            <td class="style2" style="width: 124px">
                <asp:Image ID="Image1" runat="server" Height="139px" 
                    ImageUrl="~/Admin/images/image_02.jpg" Width="251px" />
&nbsp;</td>
            <td class="style3" style="width: 124px">
                <asp:Image ID="Image2" runat="server" Height="139px" 
                    ImageUrl="~/Admin/images/image_06.gif" Width="251px" />
            </td>
        </tr>
        <tr>
            <td class="style2" style="width: 124px">
                <asp:Image ID="Image3" runat="server" Height="139px" 
                    ImageUrl="~/Admin/images/image_04.gif" Width="251px" />
            </td>
            <td style="width: 124px">
                <asp:Image ID="Image4" runat="server" Height="139px" 
                    ImageUrl="~/Admin/images/p2.jpg" Width="251px" />
            </td>
        </tr>
    </table>
</asp:Content>

