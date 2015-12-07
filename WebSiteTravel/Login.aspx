<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="height: 191px; width: 692px; color: #000000; font-size: medium;">
        <tr>
            <td style="width: 223px">
                User Name:</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="#CC0000" 
                    ValidationGroup="login"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 223px">
                Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="#CC0000" 
                    ValidationGroup="login"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 223px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px; width: 223px;">
            </td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 223px">
                <asp:Button ID="BtnSignin" runat="server" onclick="BtnSignin_Click" 
                    Text="Sign In" ValidationGroup="login" />
            </td>
            <td>
                &nbsp;<asp:LinkButton ID="LinkRegister" runat="server" onclick="LinkRegister_Click">Register</asp:LinkButton>
&nbsp;&nbsp;
                <asp:Label ID="Lbllogin" runat="server" ForeColor="#CC0000"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 223px">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">ForgotPassword</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 223px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Login:</span> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table style="width: 100%; height: 514px;">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
    
        <tr>
            <td>
                <asp:Image ID="Image7" runat="server" Height="217px" 
                    ImageUrl="~/images/thCAWQ2ONL.jpg" Width="210px" />
            </td>
        </tr>
 
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="256px" 
                    ImageUrl="~/images/thCAUITJ82.jpg" Width="210px" />
            </td>
        </tr>
  
    </table>
    
</asp:Content>