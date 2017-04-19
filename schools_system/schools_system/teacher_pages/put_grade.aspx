<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="put_grade.aspx.cs" Inherits="schools_system.teacher_pages.put_grade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 267px;
        }
        .auto-style2 {
            width: 267px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style3 {
            width: 267px;
            font-size: xx-large;
            color: #0000CC;
        }
        .auto-style4 {
            color: #009933;
            text-decoration: underline;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Menu ID="Menu1" runat="server" RenderingMode="Table" style="font-weight: 700; font-style: italic; font-size: x-large; color: #993399;">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Back To Home"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Grade Assignmrnt </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Grade</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <em>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700; font-size: large; " Text="Submit Grade" CssClass="auto-style4" />
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
