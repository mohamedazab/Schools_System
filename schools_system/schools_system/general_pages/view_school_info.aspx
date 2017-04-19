<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view_school_info.aspx.cs" Inherits="schools_system.general_pages.view_school_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 453px;
        }
        .auto-style2 {
            width: 453px;
            font-size: xx-large;
            color: #0000CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style2">
                <strong>
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="MV Boli" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" style="color: #990099; text-align: right; font-size: x-large; font-style: italic; text-decoration: underline">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Home "></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong></td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>View School Information</strong></td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="389px">
                    <Columns>
                       <asp:HyperLinkField DataTextField ="Primary_key" DataNavigateUrlFields="primary_key" DataNavigateUrlFormatString ="~/general_pages/view_school_info.aspx?Value={0}" 
                           HeaderText =" GO " ItemStyle-Width="150" />
                           
                   </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
