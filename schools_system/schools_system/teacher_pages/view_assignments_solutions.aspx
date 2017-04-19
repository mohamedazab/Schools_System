<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view_assignments_solutions.aspx.cs" Inherits="schools_system.teacher_pages.view_grade_assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 301px;
        }
        .auto-style2 {
            width: 301px;
            font-size: xx-large;
            color: #0000CC;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 301px;
            font-size: xx-large;
            color: #0000CC;
            height: 1px;
        }
        .auto-style5 {
            height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Menu ID="Menu1" runat="server" RenderingMode="Table" style="font-weight: 700; font-style: italic; font-size: x-large; color: #993399;" OnMenuItemClick="Menu1_MenuItemClick">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Back To Home"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Students&#39; Solutions For My Assignments</strong></td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style3" Visible="False"></asp:Label>
                </strong>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td rowspan="4">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
