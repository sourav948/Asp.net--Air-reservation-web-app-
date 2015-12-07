<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="Tours.aspx.cs" Inherits="Tours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    Tours:
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    We are trying to reflect our India as much as possible, so that our customer 
    will get a clear picture about the country.For this,we are providing tours of 
    several places with all the facilities to reach and stay there.Several visiting 
    places are:</p>
<ul>
    <li><a href="FrmChandigarh.aspx">Chandigarh</a></li>
    <li><a href="FrmMumbai.aspx">Mumbai</a></li>
    <li><a href="FrmGoa.aspx">Goa</a></li>
    <li><a href="FrmDelhi.aspx">Delhi</a></li>
</ul>
<p>
    &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image7" runat="server" Height="188px" 
                    ImageUrl="~/images/thCAWQ2ONL.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="188px" 
                    ImageUrl="~/images/hawamahal.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="101px" 
                    ImageUrl="~/images/thCAUITJ82.jpg" Width="210px" />
            </td>
        </tr>
    </table>
</asp:Content>

