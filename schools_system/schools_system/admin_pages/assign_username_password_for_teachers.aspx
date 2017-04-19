<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="assign_username_password_for_teachers.aspx.cs" Inherits="schools_system.admin_pages.assign_username_password_for_teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #0000CC;
            font-size: xx-large;
            width: 498px;
        }
        .auto-style2 {
            width: 498px;
        }
        .auto-style3 {
            width: 412px;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 324px;
        }
        .auto-style5 {
            width: 498px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: large;
            color: #009933;
            text-decoration: underline;
        }
        .auto-style8 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Menu ID="Menu1" runat="server" CssClass="auto-style3" OnMenuItemClick="Menu1_MenuItemClick">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"><strong>Assign Username &amp; Password</strong></td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Label" Visible="False"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Username</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style8" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Password</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldVa" runat="server" ControlToValidate="TextBox2" CssClass="auto-style8" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4"><strong><em>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Assign" />
                </em></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
