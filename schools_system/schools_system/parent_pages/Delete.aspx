<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="schools_system.parent_pages.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
            width: 284px;
            color: #0066FF;
            font-size: x-large;
        }
        .auto-style3 {
            width: 285px;
        }
        .auto-style4 {
            width: 455px;
            margin-left: 80px;
        }
        .auto-style5 {
            width: 455px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style2"><strong>List Of All Your Reviews</strong></td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='~/parent_pages/Parent_main.aspx/?Label2=<%# Eval("Label2") %>'>Back To Parent Main</asp:HyperLink>
                <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/general_pages/Home.aspx">Logout</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style3">School ID</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Delete Your Rating" Width="266px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
