<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmHotelImages.aspx.cs" Inherits="FrmHotelImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Both" Height="16px" Width="433px" RepeatColumns="3" 
        RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
    style="background-color: #56B6B6">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <asp:Image ID="Image1" ImageUrl='<%#Eval("HotelPic") %>' runat="server" Height="90px" Width="90px"  />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("HotelName")%>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server"  CommandArgument='<%#Eval("HotelId") %>'>Description </asp:LinkButton>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Hotels:</span> 
</asp:Content>

 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
      <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
        
            <td>
            <marquee direction="up">
                <asp:Image ID="Image1" runat="server" Height="172px" 
                    ImageUrl="~/images/Swimming_Pool_1_goa.jpg" Width="207px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
            <marquee direction="up">
                <asp:Image ID="Image2" runat="server" Height="172px" 
                    ImageUrl="~/images/Conference_Hall_goa.jpg" Width="207px" /></marquee>
            </td>
            </marquee>
        </tr>
        <%--<tr>
            <td>
            <marquee direction="up" type="alternate">
                <asp:Image ID="Image3" runat="server" Height="216px" 
                    ImageUrl="~/Restaurant_d1.jpg" Width="206px" />
            </td></marquee>
        </tr>--%>
        </table>
                               
 </asp:Content>
