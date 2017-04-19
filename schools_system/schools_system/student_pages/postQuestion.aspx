<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="postQuestion.aspx.cs" Inherits="schools_system.Student_pages.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
            width: 691px;
            height: 70px;
        }
        .auto-style5 {
            width: 112px;
            height: 70px;
        }
        .auto-style6 {
            width: 691px;
            height: 38px;
        }
        .auto-style8 {
            width: 112px;
            height: 38px;
        }
        .auto-style3 {
            width: 691px;
        }
        .auto-style2 {
            width: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Labelcourse" runat="server" Text="course name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Labelusername" runat="server" Text="username"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Labelcode" runat="server"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Button ID="Buttonlogout" runat="server" OnClick="Buttonlogout_Click" Text="logout" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="TextBoxQuestion" runat="server" OnTextChanged="TextBoxQuestion_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxQuestion" ErrorMessage="Required Field" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Buttonpost" runat="server" Text="post" OnClick="Buttonpost_Click" Width="76px" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Labeldone" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
