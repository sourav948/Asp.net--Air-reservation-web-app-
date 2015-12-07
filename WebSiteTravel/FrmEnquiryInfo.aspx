<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmEnquiryInfo.aspx.cs" Inherits="FrmEnquiryInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style1" style="color: #000000; font-size: medium">
        <tr>
            <td style="width: 166px">
                Source</td>
            <td style="width: 129px">
                <asp:TextBox ID="txtSource" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 123px">
                &nbsp;&nbsp;&nbsp;
                Destination</td>
            <td style="width: 249px">
                <asp:TextBox ID="txtDestination" runat="server" style="margin-left: 0px" 
                    Width="103px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                &nbsp;</td>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 123px">
                &nbsp;</td>
            <td style="width: 249px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                Date of Journey</td>
            <td colspan="2">
                <asp:TextBox ID="txtDojrney" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px" rowspan="2">
                Required Seats</td>
            <td style="width: 129px">
                Child</td>
            <td style="width: 123px">
                Adult</td>
            <td style="width: 249px">
                S.Citizen</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:TextBox ID="txtChild" runat="server" Height="22px" Width="44px"></asp:TextBox>
            </td>
            <td style="width: 123px">
                <asp:TextBox ID="txtAdult" runat="server" Height="21px" Width="48px"></asp:TextBox>
            </td>
            <td style="width: 249px">
                <asp:TextBox ID="txtSCitizen" runat="server" Height="21px" Width="49px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                Flight Details:</td>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 123px">
                &nbsp;</td>
            <td style="width: 249px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    Height="183px" Width="665px" onrowcommand="GridView1_RowCommand" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" 
                     >
                   
                    <Columns>
                        <asp:TemplateField ShowHeader="False" HeaderText="Fare">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("FlightId") %>' runat="server">Fare Details</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="flightName" HeaderText="FlightName" />
                        <asp:BoundField DataField="DepartureTime" HeaderText="Departure Time" />
                        <asp:BoundField DataField="ArrivalTime" HeaderText="Arrival Time" />
                        <asp:BoundField DataField="FlightDays" HeaderText="FlightDays" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <br />
                <table class="style1" style="font-size: medium; color: #000000">
                    <tr>
                        <td style="height: 26px; width: 238px;">
                            &nbsp;</td>
                        <td style="height: 26px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Flight Class Status:</td>
                        <td>
                            <asp:RadioButton ID="RBBusiness" runat="server" 
                                oncheckedchanged="RBBusiness_CheckedChanged" Text="Business" 
                                AutoPostBack="True" GroupName="flightclsstatus" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Child</td>
                        <td>
                            <asp:Label ID="lblChildFare" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Adult</td>
                        <td>
                            <asp:Label ID="lblAdultFare" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Sr.Citizen</td>
                        <td>
                            <asp:Label ID="lblCitizenFare" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Flight Class Status:</td>
                        <td>
                            <asp:RadioButton ID="RBEconomic" runat="server" Text="Economic" 
                                oncheckedchanged="RBEconomic_CheckedChanged" AutoPostBack="True" 
                                GroupName="flightclsstatus" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Child</td>
                        <td>
                            <asp:Label ID="LblEcoChild" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Adult</td>
                        <td>
                            <asp:Label ID="LblEcoAdult" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Sr.Citizen</td>
                        <td>
                            <asp:Label ID="LblEcoScitizen" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            Total Fare</td>
                        <td>
                            <asp:Label ID="lblFare" runat="server" ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 238px">
                            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Make Payment</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     
    <span style="color: #000099">Enquiry Information:</span>
     
</asp:Content>

 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  
   <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td style="color: #000099; font-size: x-large">
               <marquee direction="up"> <asp:Image ID="Image7" runat="server" Height="171px" 
                    ImageUrl="~/images/thCAUGQYHA.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td style="color: #000099; font-size: x-large">
                <marquee direction="up"><asp:Image ID="Image5" runat="server" Height="171px" 
                    ImageUrl="~/images/thCA230H6C.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td style="color: #000099; font-size: x-large">
               <marquee direction="up"> <asp:Image ID="Image6" runat="server" Height="171px" 
                    ImageUrl="~/images/thCAKFEAND.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image1" runat="server" Height="171px" 
                    ImageUrl="~/images/thCAL8TNHK.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image2" runat="server" Height="171px" 
                    ImageUrl="~/images/thCA0FEPMM.jpg" Width="224px" /></marquee>
            </td>
        </tr>
        <tr>
            <td>
                <marquee direction="up"><asp:Image ID="Image3" runat="server" Height="171px" ImageUrl="~/images/th.jpg" 
                    Width="224px" /></marquee>
            </td>
        </tr>
    </table>
                              
                             
 </asp:Content>
