<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmForgotPassword.aspx.cs" Inherits="FrmForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Forgot Password:
</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; font-size: medium;">
    <tr>
        <td>
            Email Id:</td>
        <td>
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtId" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                ValidationGroup="1">ViewDetails</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            First Name:</td>
        <td>
            <asp:Label ID="lblfname" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Security Question</td>
        <td>
            <asp:Label ID="lblQuestion" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Answer</td>
        <td>
            <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtAnswer" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        </td>
        <td>
            <asp:Label ID="lblsubmit" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <table style="width: 100%">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image8" runat="server" Height="188px" 
                    ImageUrl="~/images/Deilli.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image7" runat="server" Height="188px" 
                    ImageUrl="~/images/thCAWQ2ONL.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="155px" 
                    ImageUrl="~/images/Chhatrapati-Shivaji-Terminus-Mumbai.jpg" 
                    Width="210px" />
            </td>
        </tr>
        </table>
   
</asp:Content>

