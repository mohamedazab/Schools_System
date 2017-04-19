<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="answer_questions.aspx.cs" Inherits="schools_system.teacher_pages.answer_questions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 311px;
        }
        .auto-style2 {
            width: 311px;
            font-size: xx-large;
            color: #0000CC;
        }
        .auto-style3 {
            width: 311px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style4 {
            width: 311px;
            font-size: xx-large;
            color: #0000CC;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-size: large;
            font-weight: bold;
            color: #33CC33;
        }
        .auto-style8 {
            color: #FF0000;
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
        </tr>
        <tr>
            <td class="auto-style2"><strong>Answer Question</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Label" Visible="False"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Answer</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="106px" TextMode="MultiLine"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style8" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Button" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
