<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="coursechoose.aspx.cs" Inherits="schools_system.Student_pages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }
        .auto-style2 {
            width: 129px;
        }
        .auto-style3 {
            font-size: xx-large;
            width: 42px;
        }
        .auto-style5 {
            width: 132px;
            height: 38px;
        }
        .auto-style6 {
            width: 129px;
            height: 38px;
        }
        .auto-style8 {
            font-size: xx-large;
            width: 737px;
        }
        .auto-style9 {
            width: 737px;
        }
        .auto-style10 {
            width: 737px;
            height: 38px;
        }
        .auto-style11 {
            width: 42px;
        }
        .auto-style12 {
            width: 42px;
            height: 38px;
        }
        .auto-style13 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;<asp:Label ID="Labelcourse" runat="server" Text="course name"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Labelcode" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Labelusername" runat="server" Text="username" CssClass="auto-style13"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style10">
                <asp:Button ID="Buttonpostquestion" runat="server" Text="post a question" OnClick="Buttonpostquestion_Click" Width="191px" />
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Buttonviewquestion" runat="server" Text="view questions" OnClick="Buttonviewquestion_Click" Width="191px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Buttonviewassign" runat="server" Text="view assignments" OnClick="Buttonviewassign_Click" Width="191px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Buttonviewgrades" runat="server" Text="view grades" OnClick="Buttonviewgrades_Click" Width="192px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
