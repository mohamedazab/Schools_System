<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updateInfo.aspx.cs" Inherits="schools_system.Student_pages.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style5
        {
            font-size: xx-large;
            width: 472px;
        }
        .style8
        {
            width: 477px;
        }
        .style7
        {
            width: 472px;
            font-weight: bold;
            font-size: large;
            text-align: right;
        }
        .style6
        {
            width: 472px;
        }
        .auto-style1 {
            font-size: xx-large;
            width: 491px;
        }
        .auto-style2 {
            width: 491px;
            font-weight: bold;
            font-size: large;
            text-align: right;
        }
        .auto-style3 {
            width: 491px;
        }
        .auto-style4 {
            width: 477px;
            margin-left: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style1"><strong style="color: #0000CC">Update my information </strong></td>
            <td class="style8">&nbsp;</td>
            <td>
                <asp:Label ID="Labelusername" runat="server" Text="username"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="style8">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="473px">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="style8">
                <asp:Label ID="Labelsucc" runat="server" 
                    style="font-weight: 700; font-size: x-large" Text="successful" 
                    ViewStateMode="Disabled" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">level</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxlevel" runat="server" 
                    ontextchanged="TextBox1_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxlevel" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">password</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxpassword" runat="server" 
                    ontextchanged="TextBoxlastname_TextChanged" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxpassword" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">grade</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxgrade" runat="server" OnTextChanged="TextBoxemail_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxgrade" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">school</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxschool" runat="server" OnTextChanged="TextBoxadress_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBoxschool" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="style8">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-size: x-large; font-weight: 700; color: #009900" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
