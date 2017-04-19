<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="make_report.aspx.cs" Inherits="schools_system.teacher_pages.make_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #0000CC;
            width: 445px;
        }
        .auto-style2 {
            width: 445px;
        }
        .auto-style3 {
            width: 445px;
            font-weight: bold;
            font-size: x-large;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1">&nbsp;</td>
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
            <td class="auto-style1"><strong>Make Report For A Student</strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Studnt&#39;s ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Report Content</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="129px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700; color: #009900; font-size: large" Text="Make Report" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
