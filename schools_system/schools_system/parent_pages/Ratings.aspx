<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ratings.aspx.cs" Inherits="schools_system.parent_pages.Ratings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style1 {
        font-size: x-large;
        color: #0000FF;
        height: 53px;
        width: 245px;
    }
        .auto-style4 {
            height: 53px;
            width: 480px;
        }
        .auto-style2 {
        height: 53px;
    }
    .auto-style3 {
        width: 245px;
    }
        .auto-style5 {
            width: 480px;
        }
        .auto-style6 {
            width: 245px;
            height: 39px;
        }
        .auto-style7 {
            width: 480px;
            height: 39px;
        }
        .auto-style8 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1"><strong>List Of Ratings</strong></td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='~/parent_pages/Parent_main.aspx/?Label2=<%# Eval("Label2") %>'>Back To Parent Main</asp:HyperLink>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/general_pages/Home.aspx">Logout</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="20">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Teacher username</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style3">RATING</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Rating from 0.00 to 10.00" ForeColor="Red" MaximumValue="10.00" MinimumValue="0.00" Type="Double"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Enter Rating" Width="266px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
