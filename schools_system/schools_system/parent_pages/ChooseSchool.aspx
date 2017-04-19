<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChooseSchool.aspx.cs" Inherits="schools_system.parent_pages.ChooseSchool" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 341px;
        }
        .auto-style2 {
            width: 341px;
            font-size: xx-large;
            color: #0066FF;
        }
    .auto-style3 {
        width: 245px;
    }
        .auto-style4 {
            width: 439px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="auto-style2"><strong>Choose School For Each Child</strong></td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='~/parent_pages/Parent_main.aspx/?Label2=<%# Eval("Label2") %>'>Back To Parent Main</asp:HyperLink>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/general_pages/Home.aspx">Logout</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              
                    
                      </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style3">School ID</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style3">Child SSN</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Submit" Width="266px" />
        </td>
        <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>
