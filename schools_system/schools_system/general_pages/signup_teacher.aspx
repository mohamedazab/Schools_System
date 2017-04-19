<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_teacher.aspx.cs" Inherits="schools_system.general_pages.signup_teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            color: #0000CC;
            width: 320px;
        }
        .style6
        {
            width: 320px;
        }
        .style7
        {
            width: 320px;
            text-align: right;
            font-weight: bold;
            font-size: large;
        }
        .style8
        {
            width: 264px;
        }
        .auto-style1 {
            font-weight: bold;
            color: #009900;
            text-decoration: underline;
            font-size: large;
        }
        .auto-style2 {
            width: 320px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            color: #003366;
        }
        .auto-style3 {
            color: #000066;
            background-color: #FFFFCC;
        }
        .auto-style4 {
            color: #000000;
        }
        .auto-style5 {
            width: 320px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            color: #003366;
            height: 64px;
        }
        .auto-style6 {
            width: 319px;
            height: 64px;
        }
        .auto-style7 {
            height: 64px;
        }
        .auto-style8 {
            width: 320px;
            height: 17px;
        }
        .auto-style9 {
            width: 319px;
            height: 17px;
        }
        .auto-style10 {
            height: 17px;
        }
        .auto-style11 {
            width: 319px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                <strong>
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="MV Boli" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" style="color: #990099; text-align: right; font-size: x-large; font-style: italic; text-decoration: underline">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Home "></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong></td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Signup As Teacher</strong></td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; font-size: x-large" Text="Label" 
                    Visible="False" CssClass="auto-style4"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                </td>
            <td class="auto-style9">
                </td>
            <td class="auto-style10">
                </td>
            <td class="auto-style10">
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                First Name
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBoxfirstname" runat="server" 
                    ontextchanged="TextBoxfirstname_TextChanged"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxfirstname" ErrorMessage="Needed Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Middle Name
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBoxmiddlename" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxmiddlename" ErrorMessage="Needed Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Last Name</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBoxlastname" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxlastname" ErrorMessage="Needed Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Birthdate</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBoxbirthdate" runat="server" TextMode="Date"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxbirthdate" ErrorMessage="Needed Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Address</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBoxaddress" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxaddress" ErrorMessage="Needed Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Email</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBoxemail" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Needed Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                Gender</td>
            <td class="auto-style6">
                <strong>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style3">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                </strong>&nbsp;
            </td>
            <td class="auto-style7">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Needed Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style11">
                <strong>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Signup" CssClass="auto-style1" />
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
