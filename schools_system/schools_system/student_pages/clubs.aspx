﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="clubs.aspx.cs" Inherits="schools_system.Student_pages.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            width: 595px;
            height: 70px;
        }
        .auto-style4 {
            height: 70px;
            text-align: right;
        }
        .auto-style5 {
            width: 112px;
            height: 70px;
        }
        .auto-style3 {
            width: 595px;
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
                <asp:Label ID="label1" runat="server" Text="clubs"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Labelusername" runat="server" Text="username"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="546px" AutoGenerateSelectButton="True">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="alreadyin" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
