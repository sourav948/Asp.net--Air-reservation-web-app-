<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlights.aspx.cs" Inherits="Admin_FrmFlights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Add Flights
    Details:</span>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 106%; height: 380px; font-size: medium;">
    <tr>
        <td style="width: 124px">
                Flight Name</td>
        <td>
            <asp:TextBox ID="txtFlghtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFlghtName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 124px">
                Company </td>
        <td>
            <asp:DropDownList ID="DdlCmpnyId" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
                DataValueField="Companyid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:conn %>" 
                SelectCommand="SELECT * FROM [tblCompany]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 124px">
                Flight Status </td>
        <td>
            <asp:DropDownList ID="DdlFlghtStatusId" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="FlightStatusName" 
                DataValueField="FlightStatusId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:conn %>" 
                SelectCommand="SELECT * FROM [tblFlightStatus]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" 
                    onclick="Button1_Click" Text="Add Details" />
                &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Enabled="False" Text="Label" 
                    Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            All Flights:-</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                Width="500px" EmptyDataText="No Flight Exist">
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

