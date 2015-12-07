<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage0.master" AutoEventWireup="true" CodeFile="AirBook.aspx.cs" Inherits="About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <span style="color: #000099">Air Booking:</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Our site is one of the best site which provide flight booking at reasonable 
        price.There are two types of flight class status available in flights:</p>
    <p>
        <strong><span style="font-size: large">&nbsp; 1. Business Class: </span></strong>In 
        this class of flight, flight of high class is available&nbsp;with high class 
        facilities of best of food and best entertainment facility.As we provide more 
        facility in this class so flight price is also higher than economic class ,but 
        it is reasonable for customer.And our services satisfy the customer............</p>
    <p>
        <strong><span style="font-size: large">&nbsp; 2.&nbsp; Economic class:</span></strong> 
        I&nbsp;n this class of flight,there are also good facilities provide to customer&nbsp; 
        but little bit lesser than business class status flights.</p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 75%; height: 560px;">
        <tr>
            <td style="color: #000099; font-size: x-large">
                <strong>Image Gallery:</strong></td>
        </tr>
        <tr>
            <td style="color: #000099; font-size: x-large">
                <asp:Image ID="Image5" runat="server" Height="155px" 
                    ImageUrl="~/images/thCA230H6C.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="170px" 
                    ImageUrl="~/images/thCAL8TNHK.jpg" Width="224px" />
            </td>
        </tr>
        <tr>
            <td style="height: 150px">
                <asp:Image ID="Image2" runat="server" Height="191px" 
                    ImageUrl="~/images/thCA0FEPMM.jpg" 
                    style="margin-top: 0px; margin-left: 0px;" Width="220px" />
            </td>
        </tr>
    </table>
</asp:Content>

