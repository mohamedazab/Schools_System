<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="post_assignments.aspx.cs" Inherits="schools_system.teacher_pages.post_assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            color: #0000CC;
            width: 262px;
        }
        .style6
        {
            width: 262px;
        }
        .style7
        {
            width: 262px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            font-family: Andalus;
        }
        .style8
        {
            width: 262px;
            text-align: right;
            font-weight: bold;
            font-size: x-large;
            font-family: Andalus;
            height: 35px;
        }
        .style9
        {
            height: 35px;
            width: 487px;
        }
        #area
        {
            height: 118px;
            width: 212px;
        }
        .style12
        {
            width: 348px;
        }
        .style13
        {
            height: 35px;
            width: 348px;
        }
        .style14
        {
            width: 487px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                <strong>Post Assignments</strong></td>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style14">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                    Font-Names="Arial Black" ForeColor="#0099CC" onclick="Button2_Click" 
                    Text="Back To Choose Menu" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td rowspan="2" class="style12">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; color: #FF0000; font-size: xx-large" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Course Code
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="code_error" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style7">
                Due Date
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="date_error" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Maximum Marks</td>
            <td class="style12">
                <asp:TextBox ID="marks" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Content</td>
            <td class="style13">
                <asp:TextBox ID="TextBox3" runat="server" Height="78px" TextMode="MultiLine" 
                    Width="144px"></asp:TextBox>
            </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Italic="False" 
                    Font-Names="Impact" Font-Size="X-Large" Font-Strikeout="False" 
                    Font-Underline="False" ForeColor="#00CC00" onclick="Button1_Click" 
                    style="text-align: center" Text="Post" Width="71px" 
                    ValidationGroup="Button1" />
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
