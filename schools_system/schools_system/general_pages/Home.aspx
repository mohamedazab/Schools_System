<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="schools_system.general_pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            color: #0000CC;
            width: 305px;
        }
        .style6
        {
            width: 305px;
        }
        .auto-style1 {
            width: 305px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style2 {
            width: 531px;
        }
        .auto-style3 {
            width: 531px;
            text-align: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            text-decoration: underline;
            font-style: italic;
            font-size: x-large;
        }
        .auto-style6 {
            background-color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                <strong>Home Page</strong></td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style3">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/general_pages/signup_login.aspx" 
                    style="font-weight: 700; font-size: x-large; color: #660066">Login or Signup</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    style="font-weight: 700; color: #660066; font-size: x-large" NavigateUrl="~/general_pages/all_schools.aspx">View List Of Available Schools In The System</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <strong>Search About A School By</strong></td>
            <td class="auto-style2">
                <strong>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="150px" CssClass="auto-style6">
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Address</asp:ListItem>
                    <asp:ListItem>Type</asp:ListItem>
                </asp:RadioButtonList>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style2">
                <em>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700; color: #009900" Text="Search" CssClass="auto-style5" />
                </em>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
