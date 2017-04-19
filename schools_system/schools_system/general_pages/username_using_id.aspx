<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="username_using_id.aspx.cs" Inherits="schools_system.general_pages.username_using_id" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #0000CC;
            width: 512px;
        }
        .auto-style2 {
            width: 512px;
        }
        .auto-style3 {
            width: 462px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 512px;
            text-align: right;
            color: #003366;
            font-size: x-large;
        }
        .auto-style6 {
            font-weight: bold;
            text-decoration: underline;
            color: #006600;
            font-size: large;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #0000CC;
            width: 512px;
            height: 25px;
        }
        .auto-style9 {
            width: 462px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        }
        .auto-style11 {
            font-size: x-large;
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"><strong>
                <asp:Menu ID="Menu1" runat="server" CssClass="auto-style11" OnMenuItemClick="Menu1_MenuItemClick">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/general_pages/signup_login.aspx" Text="Login / Signup" Value="Login / Signup"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style1"><strong>Check Username Assignement</strong></td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Your ID</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style7" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Check" />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
