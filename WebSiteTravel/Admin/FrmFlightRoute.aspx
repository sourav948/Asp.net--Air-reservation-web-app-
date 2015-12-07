<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlightRoute.aspx.cs" Inherits="Admin_FrmFlightRoute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Flight Route Details:</span>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="height: 307px; width: 517px; font-size: medium;">
   <tr>
     <td>Departure Time</td>
     <td style="width: 202px">
         <asp:TextBox ID="txtDepartureTime" runat="server" Width="123px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtDepartureTime" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         <br />
       </td>
   </tr>
   <tr>
     <td> Arrival Time</td>
     <td style="width: 202px">
         <asp:TextBox ID="txtArrivalTime" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="txtArrivalTime" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         <br />
       </td>
   </tr>
   <tr>
     <td> Flightdays</td>
     <td style="width: 202px">
         <asp:TextBox ID="txtFlghtDays" runat="server"></asp:TextBox>
         <asp:RangeValidator ID="RangeValidator1" runat="server" 
             ControlToValidate="txtFlghtDays" ErrorMessage="1-7" ForeColor="#CC0000" 
             MaximumValue="7" MinimumValue="1"></asp:RangeValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ControlToValidate="txtFlghtDays" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
         <br />
       </td>
   </tr>
    <tr>
     <td style="text-align: left">Source<asp:DropDownList ID="DDSource" runat="server" 
             DataSourceID="SqlDataSource1" DataTextField="Source" 
             DataValueField="RouteId">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:conn %>" 
             SelectCommand="SELECT * FROM [tblRoutes]"></asp:SqlDataSource>
        </td>
     <td style="width: 202px">
         <br />
        </td>
    </tr>
    <tr>
     <td style="text-align: left">Destination<asp:DropDownList ID="DDDestination" 
             runat="server" DataSourceID="SqlDataSource1" DataTextField="Destination" 
             DataValueField="RouteId">
         </asp:DropDownList>
        </td>
     <td style="width: 202px">
         &nbsp;</td>
    </tr>
    <tr>
      <td>Flight </td>
      <td style="width: 202px">
          <asp:DropDownList ID="DdlFlghtId" runat="server" 
              DataSourceID="SqlDataSource2" DataTextField="FlightName" 
              DataValueField="FlightId">
          </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:conn %>" 
              SelectCommand="SELECT * FROM [tblFlights]"></asp:SqlDataSource>
          <br />
        </td>
    </tr>
    <tr>
    <td> <asp:Button ID="Button1" runat="server" Width="124px" onclick="Button1_Click" 
            Text="AddFlightRoute" > </asp:Button></td>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
    <td> &nbsp;</td>
    <td>
        &nbsp;</td>
    </tr>
    <tr>
    <td colspan="2"> 
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            EmptyDataText="No Record Exist">
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
        </td>
    </tr>
    </table>
 
</asp:Content>

