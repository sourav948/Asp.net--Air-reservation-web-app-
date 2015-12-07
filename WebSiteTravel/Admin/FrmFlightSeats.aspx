<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlightSeats.aspx.cs" Inherits="Admin_FrmFlightSeats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Flight Seats Details:</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
        <tr>
            <td style="width: 285px">
                total Seats No.</td>
            <td>
                <asp:TextBox ID="txtTotalSeats" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTotalSeats" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                Flight Class Status</td>
            <td>
                <asp:DropDownList ID="DdlFlightClsStatus" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="FlightClassStatusName" 
                    DataValueField="FlightClassStatusId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblFlightClassStatus]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 285px; height: 83px;">
                Source&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DdlSource" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="Source" DataValueField="RouteId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblRoutes]"></asp:SqlDataSource>
                <br />
            </td>
            <td style="height: 83px">
                Destination&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DdlDestination" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Destination" 
                    DataValueField="RouteId">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                Flight Name</td>
            <td>
                <asp:DropDownList ID="DdlFlightName" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="FlightName" 
                    DataValueField="FlightId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblFlights]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 285px">
                <asp:Button ID="Button1" runat="server" BackColor="#3399FF" 
                    onclick="Button1_Click" Text="ADD DETAILS" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

