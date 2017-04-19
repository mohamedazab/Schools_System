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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
    <tr>
        <td class="style8">
            <strong><em style="color: #0000CC">Please choose what to do<br />
&nbsp;</em></strong></td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:Button ID="view_courses" runat="server" Text="View the courses I teach" 
                onclick="view_courses_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:Button ID="assignemnt" runat="server" Text="Post Assignments" 
                onclick="assignemnt_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:Button ID="view_assignments" runat="server" 
                Text="View &amp; Grade Assignments" onclick="view_assignments_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:Button ID="reports" runat="server" Text=" Write reports about students " 
                onclick="reports_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:Button ID="questions" runat="server" Text="View &amp; Answer Questions " 
                onclick="questions_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:Button ID="view_students" runat="server" Text="View my students" 
                onclick="view_students_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>
