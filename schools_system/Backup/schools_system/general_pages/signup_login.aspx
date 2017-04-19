<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_login.aspx.cs" Inherits="schools_system.general_pages.signup_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            width: 378px;
        }
        .style6
        {
            width: 378px;
            font-size: xx-large;
        }
        .style7
        {
            color: #0000CC;
        }
        .style8
        {
            font-size: large;
        }
        .style9
        {
            width: 378px;
            text-align: right;
        }
        .style10
        {
            font-size: x-large;
        }
        .style11
        {
            font-size: xx-large;
            width: 277px;
        }
        .style12
        {
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="style1">
        <tr>
            <td class="style6">
                <strong><span class="style7">Choose to log in or Sign up</span> </strong>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style12">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: x-large" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                <strong>Login</strong></td>
        </tr>
        <tr>
            <td class="style9">
                <br />
                <strong><span class="style8">Username
                <br />
&nbsp;</span><br class="style8" />
                <span class="style8">Password</span></strong></td>
            <td class="style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" TabIndex="3" 
                    Width="109px">
                    <asp:ListItem>As Teacher</asp:ListItem>
                    <asp:ListItem>As Parent</asp:ListItem>
                    <asp:ListItem>As Student</asp:ListItem>
                    <asp:ListItem>As Admin</asp:ListItem>
                </asp:RadioButtonList>
                <asp:TextBox ID="usernamebox" runat="server" Height="26px"></asp:TextBox>
                <br />
                <asp:TextBox ID="passwordbox" runat="server" Height="29px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                    onclick="Button2_Click" 
                    style="font-size: x-large; color: #33CC33; font-style: italic" Text="Login" />
                <br />
                <br />
                <br />
                <strong><span class="style10">Signup</span></strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <br />
                <br />
                <br />
            </td>
            <td class="style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    onselectedindexchanged="RadioButtonList2_SelectedIndexChanged" TabIndex="3" 
                    Width="109px">
                    <asp:ListItem>As Teacher</asp:ListItem>
                    <asp:ListItem>As Parent</asp:ListItem>
                    <asp:ListItem>As Student</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="signup" runat="server" Font-Bold="True" onclick="signup_Click" 
                    style="font-size: x-large; color: #00CC00; font-style: italic" Text="Signup" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
