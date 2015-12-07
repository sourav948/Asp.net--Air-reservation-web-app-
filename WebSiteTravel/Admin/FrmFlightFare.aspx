<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlightFare.aspx.cs" Inherits="Admin_FrmFlightFare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Add Flight Details:</span>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
        <tr>
            <td>
                Flight Class Status </td>
            <td>
                <asp:DropDownList ID="DdlfclsStatusId" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="FlightClassStatusName" 
                    DataValueField="FlightClassStatusId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblFlightClassStatus]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Customer Status </td>
            <td>
                <asp:DropDownList ID="DdlCusStatusId" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="CustomerStatusName" 
                    DataValueField="CustomerStatusId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblCustomerStatus]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Fare </td>
            <td>
                <asp:DropDownList ID="DdlFareId" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Fare" DataValueField="FareId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblFare]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Flight </td>
            <td>
                <asp:DropDownList ID="DdlFlghtId" runat="server" 
                    DataSourceID="SqlDataSource4" DataTextField="FlightName" 
                    DataValueField="FlightId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblFlights]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 30px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Details" BackColor="#3399FF" BorderColor="White" />
            </td>
            <td style="height: 30px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

