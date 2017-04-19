<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="schools_system.parent_pages.Application" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #0000FF;
        font-size: xx-large;
        width: 364px;
            height: 98px;
        }
    .auto-style2 {
        width: 364px;
    }
    .auto-style4 {
        width: 364px;
        text-align: right;
    }
        .auto-style5 {
            width: 366px;
            height: 98px;
        }
        .auto-style6 {
            height: 98px;
        }
        .auto-style7 {
            width: 366px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    <tr>
        <td class="auto-style1"><strong>Fill This Application</strong></td>
        <td class="auto-style5">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl=  '~/parent_pages/Parent_main.aspx/?Label2=<%# Eval("Label2") %>'>Back To Parent Main</asp:HyperLink>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/general_pages/Home.aspx">Logout</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>SSN</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="342px"></asp:TextBox>
        </td>
        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Name</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="342px"></asp:TextBox>
        </td>
        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Birthdate</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="342px" TextMode="Date"></asp:TextBox>
        </td>
        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Gender</strong></td>
        <td class="auto-style7">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="355px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>School_ID</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="342px"></asp:TextBox>
        </td>
        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="Submit" runat="server" Font-Bold="True" Font-Size="X-Large" Height="53px" OnClick="Submit_Click" Text="Submit" Width="279px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
