<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FrmFlightClassStatus.aspx.cs" Inherits="Admin_FrmFlightClassStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Flight Class Status:</span>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="font-size: medium">
  <tr>
   <td>Flight ClassStatus Name</td>
   <td style="width: 322px">  
       <asp:TextBox ID="txtFclsStatusName" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtFclsStatusName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
  <td> 
      <asp:Button ID="Button1" runat="server" Text="Add Flight ClassStatus" 
          onclick="Button1_Click" Width="161px" />
      </td>
   <td style="width: 322px"> 
       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td> 
      &nbsp;</td>
   <td style="width: 322px"> 
       &nbsp;</td>
  </tr>
  <tr>
  <td colspan="2"> 
      <asp:GridView ID="GridView1" runat="server" BackColor="White" 
          BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
          Height="153px" Width="311px">
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

