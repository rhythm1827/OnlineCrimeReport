<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="MissingValuable.aspx.cs" Inherits="User_MissingValuable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <script type="text/javascript">
        function fun1(msg) {
            alert(msg);
        }


   </script>
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            font-size: large;
            font-family: "Times New Roman";
        }
        .auto-style9 {
            width: 190px;
        }
        .auto-style10 {
            width: 240px;
        }
        .auto-style11 {
            color: #C60005;
        }
        .auto-style12 {
            width: 13px;
        }
        .auto-style13 {
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            font-size: large;
        background-color: #660066;
    }
        .auto-style14 {
            font-size: x-large;
            color: #FFFFFF;
            background-color: #660066;
        height: 20px;
    }
    .auto-style15 {
        font-size: large;
    }
        .auto-style16 {
            color: #CC0000;
            background-color: #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style14" colspan="6"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <span class="auto-style15">Missing Valueable Report:</span></em></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Missing Valuable Name:"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td><strong>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style16" ErrorMessage="Name in between 3 to 25 characters" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label10" runat="server" CssClass="auto-style8" Text="Valueable Type:"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="224px">
                    <asp:ListItem>Mobile Phone</asp:ListItem>
                    <asp:ListItem>Laptop/PC</asp:ListItem>
                    <asp:ListItem>Accessories</asp:ListItem>
                    <asp:ListItem>Documents</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Details:"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td><strong>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style16" ErrorMessage="Details in between 10 to 205 characters" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Missed By:"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td><strong>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style16" ErrorMessage="Missed by in between 5 to 25 characters" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text="Address:"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td><strong>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style16" ErrorMessage="Address in between 8 to 55 characters" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Mobile Number:"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td><strong>
                <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style16" ErrorMessage="Mobile in between 5 to 25 characters" OnServerValidate="CustomValidator5_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text="Value in tk(৳):"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text="Missing Date: "></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Date"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style8" Text="Missing Time: "></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Time"></asp:TextBox>
                </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" CssClass="auto-style11" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowModelStateErrors="False" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style8" Text="Files(if any):"></asp:Label>
                </em></strong></td>
            <td class="auto-style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="224px" />
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10"><strong><em>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="31px" OnClick="Button1_Click" Text="Submit" Width="224px" />
                </em></strong></td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

