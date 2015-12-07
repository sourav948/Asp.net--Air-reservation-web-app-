<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmDelhi.aspx.cs" Inherits="FrmDelhi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Delhi : Dilwalon Ki Dilli.......</span> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin: 0px; padding: 0px;">
    Delhi is a city that bridges two different worlds. Old Delhi, once the capital 
    of Islamic India, is a labyrinth of narrow lanes lined with crumbling havelis 
    and formidable mosques. In contrast, the imperial city of New Delhi created by 
    the British Raj is composed of spacious, tree-lined avenues and imposing 
    government buildings. Delhi has been the seat of power for several rulers and 
    many empires for about a millennium. Many a times the city was built, destroyed 
    and then rebuilt here. Interestingly, a number of Delhi&#39;s rulers played a dual 
    role, first as destroyers and then as creators.</p>
<p style="margin: 0px; padding: 0px;">
    &nbsp;</p>
<p style="margin: 0px; padding: 0px;">
    Delhi has been the political hub of India. Every political activity in the 
    country traces its roots here. This was true even of the mythological era. The 
    Pandavas of the Mahabharata had their capital at Indraprastha, which is believed 
    to have been geographically located in today&#39;s Delhi.<br />
</p>
    <p style="margin: 0px; padding: 0px;">
        &nbsp;</p>
    <p style="margin: 0px; padding: 0px;">
    <br />
     Other destinations are:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server"><a href="FrmChandigarh.aspx">Chandigarh</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server"><a href ="FrmMumbai.aspx">Mumbai</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server"><a href="FrmGoa.aspx">Goa</a></asp:LinkButton>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%; height: 554px">
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" Height="118px" 
                ImageUrl="~/images/janter manter.jpg" Width="212px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image2" runat="server" Height="118px" 
                ImageUrl="~/images/Lotus-Temple_new_delhi-India.jpg" Width="212px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image3" runat="server" Height="118px" 
                ImageUrl="~/images/maszid.jpg" Width="212px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image4" runat="server" Height="118px" 
                ImageUrl="~/images/delhi.jpg" Width="212px" />
        </td>
    </tr>
</table>
</asp:Content>

