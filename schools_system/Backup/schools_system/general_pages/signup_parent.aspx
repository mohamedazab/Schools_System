<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_parent.aspx.cs" Inherits="schools_system.general_pages.signup_parent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            width: 472px;
        }
        .style6
        {
            width: 472px;
        }
        .style7
        {
            width: 472px;
            font-weight: bold;
            font-size: large;
            text-align: right;
        }
        .style8
        {
            width: 477px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                <strong style="color: #0000CC">signup As Parent </strong>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; font-size: x-large" Text="Label" 
                    ViewStateMode="Disabled" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                First name</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxfirstname" runat="server" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxfirstname" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Last Name</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxlastname" runat="server" 
                    ontextchanged="TextBoxlastname_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxlastname" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Mobile numbers 1,2</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxmobile1" runat="server" 
                    ontextchanged="TextBoxmobile1_TextChanged">Mobile 1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxmobile2" runat="server" 
                    ontextchanged="TextBoxmobile2_TextChanged">Mobile 2 </asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Mobile number 3,4</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxmobile3" runat="server" 
                    ontextchanged="TextBoxmobile3_TextChanged">Mobile 3 </asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxmobile4" runat="server" 
                    ontextchanged="TextBoxmobile4_TextChanged">Mobile 4 </asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                E-mail</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Address</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxadress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBoxadress" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Home phone number</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxhome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBoxhome" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Username</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxusername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBoxusername" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Password</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBoxpassword" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-size: x-large; font-weight: 700; color: #009900" Text="Signup" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
