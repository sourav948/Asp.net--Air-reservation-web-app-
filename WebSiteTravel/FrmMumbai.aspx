<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmMumbai.aspx.cs" Inherits="FrmMumbai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Mumbai:
    The Metropolitian City</span>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: medium">
        &nbsp;Mumbai, formerly known as Bombay, is the capital city of the Indian state 
        of Maharashtra. It is the most populous city in India, and the fourth most 
        populous city in the world, with a total metropolitan area population of 
        approximately 20.5 million. Mumbai is home to 
        Bollywood, it is also the financial and commercial capital of India.</p>
<p style="font-size: medium">
        Mumbai was named an Alpha World City, it is also the wealthiest city in India. 
        Mumbai is the primary tourist area and home to most of Mumbai&#39;s museums, art 
        galleries, bars, upscale restaurants, luxury retail with brands like Armani, 
        zegna, Hermes, etc., and the Gateway of India. </p>
<p>
        Other destinations are:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server"><a href="FrmChandigarh.aspx">Chandigarh</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server"><a href ="FrmDelhi.aspx">Delhi</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server"><a href="FrmGoa.aspx">Goa</a></asp:LinkButton>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="136px" 
                    ImageUrl="~/images/Flora-Fountain-in-Mumbai.jpg" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="136px" 
                    ImageUrl="~/images/Crawford-Market-Mumbai.jpg" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" Height="119px" 
                    ImageUrl="~/images/Gateway-of-India-at-night-Mumbai.jpg" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="106px" 
                    ImageUrl="~/images/Chhatrapati-Shivaji-Terminus-Mumbai.jpg" 
                    Width="215px" />
            </td>
        </tr>
    </table>
</asp:Content>

