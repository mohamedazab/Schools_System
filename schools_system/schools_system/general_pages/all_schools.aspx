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
        .auto-style1 {
            font-size: xx-large;
            color: #0000CC;
            width: 490px;
        }
        .auto-style2 {
            width: 490px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1">
                <strong>
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="MV Boli" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" style="color: #990099; text-align: right; font-size: x-large; font-style: italic; text-decoration: underline">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Home "></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <strong>All School In The System</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" 
                    Width="488px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                   <Columns>
                       <asp:HyperLinkField DataTextField ="Primary_key" DataNavigateUrlFields="primary_key" DataNavigateUrlFormatString ="~/general_pages/view_school_info.aspx?Value={0}" 
                           HeaderText =" GO " ItemStyle-Width="150" />
                           
                   </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
