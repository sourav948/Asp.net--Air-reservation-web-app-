<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="FrmCustomer.aspx.cs" Inherits="FrmCustomer" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="style1">
        <tr>
            <td style="width: 800px; height: 570px;">
                <table class="style1" 
                    style="width: 102%; height: 546px; font-size: medium; color: #000000;">
                    <tr>
                        <td>
                            First Name</td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last Name</td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email Id</td>
                        <td>
                            <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtEmailId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEmailId" ErrorMessage="Invalid Id" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ForeColor="#CC0000"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 30px">
                            Password</td>
                        <td style="height: 30px">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:PasswordStrength ID="txtPassword_PasswordStrength" runat="server" 
                                Enabled="True" TargetControlID="txtPassword">
                            </asp:PasswordStrength>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Age</td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="txtAge" ErrorMessage="18-70" ForeColor="#CC0000" 
                                MaximumValue="70" MinimumValue="18"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address</td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px">
                            Country Id</td>
                        <td style="height: 26px">
                            <asp:DropDownList ID="DrDwnlstCountryId" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="CountryName" 
                                DataValueField="CountryId">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:conn %>" 
                                SelectCommand="SELECT * FROM [tblCountry]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px">
                            State Id</td>
                        <td style="height: 26px">
                            <asp:DropDownList ID="DrDwnlstStateId" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="StateName" 
                                DataValueField="StateId">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:conn %>" 
                                SelectCommand="SELECT * FROM [tblState]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City</td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtCity" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Pin Code</td>
                        <td>
                            <asp:TextBox ID="txtPinCode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtPinCode" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile No</td>
                        <td>
                            <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtMobileNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender</td>
                        <td>
                            <asp:DropDownList ID="DrDwnlstGender" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Security Ques</td>
                        <td>
                            <asp:DropDownList ID="DrDwnlstSQuestion" runat="server">
                                <asp:ListItem>What is your father name?</asp:ListItem>
                                <asp:ListItem>What is your pet name?</asp:ListItem>
                                <asp:ListItem>Who is your best Friend?</asp:ListItem>
                                <asp:ListItem>favourite pet?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Answer</td>
                        <td>
                            <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
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
                        <td style="height: 30px">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="ADD DETAILS" BackColor="#3399FF" />
                        </td>
                        <td style="height: 30px">
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #003399">Customer Details:
</span>
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
                    ImageUrl="~/images/rock Garden.jpg" Width="210px" />
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
                <asp:Image ID="Image2" runat="server" Height="188px" 
                    ImageUrl="~/images/hawamahal.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="162px" 
                    ImageUrl="~/images/thCAUITJ82.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image6" runat="server" Height="152px" 
                    ImageUrl="~/images/chandi3.jpg" Width="210px" />
            </td>
        </tr>
    </table>
    
</asp:Content>

