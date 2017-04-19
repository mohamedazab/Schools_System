<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_login.aspx.cs" Inherits="schools_system.general_pages.signup_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            width: 378px;
        }
        .style6
        {
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
        .auto-style1 {
            font-size: xx-large;
            height: 10px;
        }
        .auto-style4 {
            font-size: xx-large;
            width: 373px;
        }
        .auto-style5 {
            width: 373px;
        }
        .auto-style6 {
            width: 373px;
            text-align: right;
            height: 188px;
        }
        .auto-style8 {
            height: 188px;
            text-align: left;
        }
        .auto-style10 {
            text-decoration: underline;
            color: #006600;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            font-size: xx-large;
            width: 195px;
        }
        .auto-style13 {
            font-size: xx-large;
            width: 195px;
            color: #003366;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            width: 195px;
            height: 188px;
        }
        .auto-style15 {
            color: #0000CC;
            background-color: #FFFFFF;
        }
        .auto-style16 {
            background-color: #99FFCC;
        }
        .auto-style17 {
            width: 126px;
        }
        .auto-style18 {
            font-size: xx-large;
            width: 126px;
            color: #003366;
            background-color: #FFFFFF;
        }
        .auto-style19 {
            width: 126px;
            height: 188px;
        }
        .auto-style20 {
            width: 373px;
            background-color: #FFFFFF;
        }
        .auto-style21 {
            color: #660066;
        }
        .auto-style22 {
            color: #006699;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="style1">
        <tr>
            <td class="auto-style1" colspan="4">
                <strong>
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="MV Boli" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" style="text-align: right; font-size: x-large; font-style: italic; text-decoration: underline" CssClass="auto-style21">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/general_pages/Home.aspx" Text="Back To Home" Value="Home "></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <strong><span class="auto-style15">Choose to log in or Sign up</span></strong></td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style11" colspan="2">
                <strong>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: x-large" Text="Label" Visible="False"></asp:Label>
                </strong></td>
            <td>
                <strong><span class="style6"><em>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style22" NavigateUrl="~/general_pages/username_using_id.aspx">Check Username Assignment</asp:HyperLink>
                </em></span></strong></td>
        </tr>
        <tr>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style13">
                <strong><em>Login</em></strong></td>
            <td class="auto-style18">
                <strong><span class="style6"><em>Signup&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></span></strong></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <strong><span class="style8">
                <br />
                <br />
                Username
                <br />
&nbsp;</span><br class="style8" />
                <span class="style8">Password</span></strong></td>
            <td class="auto-style14">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" TabIndex="3" 
                    Width="109px" CssClass="auto-style16">
                    <asp:ListItem>As Teacher</asp:ListItem>
                    <asp:ListItem>As Parent</asp:ListItem>
                    <asp:ListItem>As Student</asp:ListItem>
                    <asp:ListItem>As Admin</asp:ListItem>
                </asp:RadioButtonList>
                </strong>
                <asp:TextBox ID="usernamebox" runat="server" Height="26px"></asp:TextBox>
                <br />
                <asp:TextBox ID="passwordbox" runat="server" Height="29px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                    onclick="Button2_Click" 
                    style="font-size: x-large; font-style: italic" Text="Login" CssClass="auto-style10" />
                <br />
                <br />
                <br />
                </td>
            <td class="auto-style19">
                <br />
                <br />
                <br />
                <br />
                <strong>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    onselectedindexchanged="RadioButtonList2_SelectedIndexChanged" TabIndex="3" 
                    Width="109px" CssClass="auto-style16">
                    <asp:ListItem>As Teacher</asp:ListItem>
                    <asp:ListItem>As Parent</asp:ListItem>
                    <asp:ListItem>As Student</asp:ListItem>
                </asp:RadioButtonList>
                </strong>
                <asp:Button ID="signup" runat="server" Font-Bold="True" onclick="signup_Click" 
                    style="font-size: x-large; font-style: italic" Text="Signup" CssClass="auto-style10" />
            </td>
            <td class="auto-style8">
                <strong>School&#39;s PK<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </strong>
                </td>
        </tr>
        </table>
</asp:Content>
