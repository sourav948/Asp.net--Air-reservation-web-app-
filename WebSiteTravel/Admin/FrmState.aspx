﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmState.aspx.cs" Inherits="Admin_FrmState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Add State Details:
</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
        <tr>
            <td>
                State Name</td>
            <td>
                <asp:TextBox ID="txtStateName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtStateName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Country Id</td>
            <td>
                <asp:DropDownList ID="DdlCountryId" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CountryName" 
                    DataValueField="CountryId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tblCountry]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add State" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                All States:<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    Width="475px" EmptyDataText="No Record Exist">
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

