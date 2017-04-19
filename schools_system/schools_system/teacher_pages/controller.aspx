<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="controller.aspx.cs" Inherits="schools_system.teacher_pages.controller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style7
    {
        width: 100%;
        height: 258px;
    }
    .style8
    {
        font-size: xx-large;
        font-family: Arial, Helvetica, sans-serif;
        width: 407px;
    }
    .style9
    {
        width: 407px;
    }
        .auto-style3 {
            font-weight: bold;
            font-size: x-large;
            color: #003366;
            font-style: italic;
            text-decoration: underline;
        }
        .auto-style5 {
            width: 626px;
        }
        .auto-style7 {
            font-size: xx-large;
            font-family: Arial, Helvetica, sans-serif;
            width: 424px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
            width: 626px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style11 {
            font-size: xx-large;
            font-family: Arial, Helvetica, sans-serif;
            width: 424px;
            height: 76px;
        }
        .auto-style12 {
            width: 424px;
        }
        .auto-style13 {
            width: 626px;
            height: 76px;
        }
        .auto-style14 {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
    <tr>
        <td class="auto-style11">
            <strong><em style="color: #0000CC">
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="MV Boli" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" style="color: #990099; text-align: right; font-size: x-large; font-style: italic; text-decoration: underline">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Home "></asp:MenuItem>
                    </Items>
                </asp:Menu>
                <br />
            Please choose what to do<br />
&nbsp;</em></strong></td>
        <td class="auto-style13">
            </td>
        <td class="auto-style14">
            </td>
    </tr>
    <tr>
        <td class="auto-style7">
            </td>
        <td class="auto-style8">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Label" Visible="False"></asp:Label>
            </strong>
            </td>
        <td class="auto-style9">
            </td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style5">
            <em>
            <asp:Button ID="view_courses" runat="server" Text="View the courses I teach" 
                onclick="view_courses_Click" CssClass="auto-style3" />
            </em>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style5">
            <em>
            <asp:Button ID="assignemnt" runat="server" Text="Post Assignments" 
                onclick="assignemnt_Click" CssClass="auto-style3" />
            </em>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style5">
            <em>
            <asp:Button ID="view_assignments" runat="server" 
                Text="View &amp; Grade Assignments" onclick="view_assignments_Click" CssClass="auto-style3" />
            </em>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style5">
            <em>
            <asp:Button ID="reports" runat="server" Text=" Write reports about students " 
                onclick="reports_Click" CssClass="auto-style3" />
            </em>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style5">
            <em>
            <asp:Button ID="view_students" runat="server" Text="View my students" 
                onclick="view_students_Click" CssClass="auto-style3" />
            </em>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style5">
            <em>
            <asp:Button ID="questions" runat="server" Text="View &amp; Answer Questions " 
                onclick="questions_Click" CssClass="auto-style3" />
            </em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6">Course Code</asp:TextBox>
            </strong>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>
