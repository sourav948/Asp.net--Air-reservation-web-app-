<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmChandigarh.aspx.cs" Inherits="FrmChandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Le Corbusier, the famous French Architect-planner plan the design of&nbsp; the 
    city. It is the Capital of the states Punjab and Haryana and also Union 
    Territory. Chandigarh is the manifestation of dream that Pt. Jawahar Lal Nehru 
    envisaged and Le Corbusier executed.</p>
<p>
    The name <strong>Chandigarh</strong> is derived from an ancient Temple called &quot;<strong>Chandi 
    Mandir</strong>&quot; devoted to <strong>Hindu Goddess Chandi</strong></p>
<p>
    &nbsp;

     Other destinations are:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server"><a href="FrmMumbai.aspx">Mumbai</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server"><a href ="FrmDelhi.aspx">Delhi</a></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server"><a href="FrmGoa.aspx">Goa</a></asp:LinkButton>
    </p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Chandigarh : The City Beautiful
</span>
</asp:Content>

 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
                
     <table style="width: 100%; height: 515px">
     <tr>
     <td style="font-size: x-large; color: #003399"><strong>Image Gallery
         :</strong></td></tr>
    <tr>

        <td>
           <marquee direction="up"> <asp:Image ID="Image6" runat="server" Height="116px" 
                ImageUrl="~/images/thCAL9LR0L.jpg" Width="212px" /></marquee>
        </td>
    </tr>
    <tr>
        <td>
           <marquee direction="up">  <asp:Image ID="Image8" runat="server" Height="130px" 
                ImageUrl="~/images/thCATQUWY6.jpg" Width="214px" /></marquee>
        </td>
    </tr>
    </table>
                      
 </asp:Content>
                        

