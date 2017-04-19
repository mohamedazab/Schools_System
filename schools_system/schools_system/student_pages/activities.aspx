<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="activities.aspx.cs" Inherits="schools_system.Student_pages.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="activities"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labelusername" runat="server" Text="username"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AutoGenerateSelectButton="True">
                </asp:GridView>
                <asp:Label ID="alreadyin" runat="server" Text="you are already a member or the activity you choose conflicts with other activity " Visible="False"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
    </table>
</asp:Content>
