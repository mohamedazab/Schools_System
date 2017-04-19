<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="schools_system.parent_pages.Reports1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            height: 38px;
            font-size: xx-large;
            width: 285px;
            color: #0000FF;
        }
        .auto-style3 {
            width: 285px;
        }
        .auto-style4 {
            height: 38px;
            width: 545px;
        }
        .auto-style5 {
            width: 545px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style2"><strong>List Of Reports</strong></td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='~/parent_pages/Parent_main.aspx/?Label2=<%# Eval("Label2") %>'>Back To Parent Main</asp:HyperLink>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/general_pages/Home.aspx">logout</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style3">&nbsp;Teacher username</td>
        <td>
            &nbsp;</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style3">Student ssn</td>
        <td>
            &nbsp;</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Reply </td>
            <td>
                &nbsp;</td>
            <td class="auto-style5">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Date</td>
            <td>
                &nbsp;</td>
            <td class="auto-style5">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Enter Rating" Width="266px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
