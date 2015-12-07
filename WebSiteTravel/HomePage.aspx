<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      Reflecting India: 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
         As the cradle of one of the world&#39;s oldest civilisations,the seventh-largest 
         country by area,the sixth nuclear powerhouse and one of the world&#39;s 
         fastest-growing economies- India gives each of us our own reasons to be proud of 
         her. As the world&#39;s largest democracy,India&#39;s indomitable spirit lies in the 
         country&#39;s 1.21 billion people standing strong and proud.</p>
     <p>
         Despite startling diversity in climates,cultures,languages,customs and 
         traditions,our incredible country,covering an area of 3.29 million sq.km,lives 
         on as one nation- in body and spirit.</p>
     <p>
         India is great - in spirit and stature,in expanse and economy,in nature&#39;s beauty 
         and technological knowledge. Through this site,you can see the visting places 
         and also get the facilities to reach and stay there by flights and hotel booking 
         facilities. Let&#39;s see the reflection of our incredible India with us..................</p>
        
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%; height: 600px;">
        <tr>
            <td>
                                    <a href="FrmChandigarh.aspx">
                                    <asp:ImageMap ID="ImageMap1" runat="server" Height="149px" 
                                        ImageUrl="~/images/chandigarh.jpg" Width="271px">
                                    </asp:ImageMap>

                                    </a>
                                </td>
        </tr>
        <tr>
            <td>
                                <a href="FrmGoa.aspx"">
                                    <asp:ImageMap ID="ImageMap6" runat="server" Height="149px" 
                                        ImageUrl="~/images/Beach_Huts_Cosy_Balcony_goa1.jpg" Width="275px">
                                    </asp:ImageMap></a>
                                </td>
        </tr>
        <tr>
            <td>
                                <a href="FrmMumbai.aspx">
                                    <asp:ImageMap ID="ImageMap3" runat="server" Height="149px" 
                                        ImageUrl="~/images/mumbai.jpg" Width="271px">
                                    </asp:ImageMap>
                                    </a>
                                </td>
        </tr>
        <tr>
            <td>
                                <a href="FrmDelhi.aspx">
                                    <asp:ImageMap ID="ImageMap4" runat="server" Height="127px" 
                                        ImageUrl="~/images/NewDelhi_Clip.jpg" Width="271px" 
                                    style="margin-bottom: 0px">
                                    </asp:ImageMap>
                                    </a>
                                </td>
        </tr>
    </table>
</asp:Content>