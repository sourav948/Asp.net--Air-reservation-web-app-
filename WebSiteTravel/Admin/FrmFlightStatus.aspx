﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlightStatus.aspx.cs" Inherits="Admin_FrmFlightStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Flight Status:
</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="height: 114px; width: 486px; font-size: medium;">
  <tr>
    <td>Flight Status  Name</td>
    <td> 
        <asp:TextBox ID="txtflgStatusNme" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtflgStatusNme" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      </td>
  </tr>
   <td> 
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
           Text="Add FlightStatus" Width="112px" />
    </td>
    <td> 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    <tr>
   <td> 
       &nbsp;</td>
    <td> 
        &nbsp;</td>
    </tr>
    <tr>
   <td colspan="2"> 
       <asp:GridView ID="GridView1" runat="server" BackColor="White" 
           BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
           Height="174px" Width="319px">
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

