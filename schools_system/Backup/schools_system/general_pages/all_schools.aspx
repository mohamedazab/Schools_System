<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="all_schools.aspx.cs" Inherits="schools_system.general_pages.all_schools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            color: #0000CC;
            width: 397px;
        }
        .style6
        {
            width: 397px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                <strong>All School In The System</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="LinqDataSource1" 
                    Width="488px">
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="schools" runat="server" EntityTypeName="">
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
