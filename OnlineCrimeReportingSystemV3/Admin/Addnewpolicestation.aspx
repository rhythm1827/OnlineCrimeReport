<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Addnewpolicestation.aspx.cs" Inherits="Admin_Addnewpolicestation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function fun1(msg) {
            alert(msg);
        }

      
    </script>
      <link href="../StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
     .newStyle1
        {
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style7
        {
            width: 121%;
             font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style14
        {
            height: 38px;
            width: 320px;
        }
        .auto-style16 {
            width: 193px;
        }
        .auto-style17 {
            width: 193px;
            height: 38px;
        }
        .auto-style19 {
            width: 193px;
            height: 25px;
        }
        .auto-style21 {
            height: 25px;
            width: 320px;
        }
        .auto-style22 {
            color: #660033;
            text-align: left;
        }
        .auto-style23 {
            color: #fff;
            background-color: #5cb85c;
            border-color: #4cae4c;
            font-size: large;
        }
        .auto-style26 {
            height: 25px;
            width: 11px;
        }
        .auto-style27 {
            height: 38px;
            width: 11px;
        }
        .auto-style28 {
            color: #FF0000;
            background-color: #FFFF00;
        }
        .auto-style29 {
            width: 320px;
        }
        .auto-style31 {
            width: 35px;
        }
        .auto-style32 {
            width: 35px;
            height: 25px;
        }
        .auto-style33 {
            width: 35px;
            height: 38px;
        }
        .auto-style35 {
            width: 212px;
        }
        .auto-style36 {
            width: 212px;
            height: 25px;
        }
        .auto-style37 {
            width: 212px;
            height: 38px;
        }
        .auto-style38 {
            width: 359px;
        }
        .auto-style39 {
            height: 25px;
            width: 359px;
        }
        .auto-style40 {
            height: 38px;
            width: 359px;
        }
        .auto-style41 {
            width: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
          <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style19"></td>
            <td class="auto-style36">
                <h3 class="auto-style22"><strong>Add New Police Station</strong></h3>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16"><strong><em>Police Station Password:</em></strong></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style41"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style38"><strong>
                <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="TextBox2" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Password within 10 to 25 characters" OnServerValidate="CustomValidator5_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16"><strong><em>Police Station Name:</em></strong></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox3" runat="server"  Width="200px" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="auto-style41"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style38"><strong>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox3" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Name within 5 to 35 characters" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style17"><strong><em>Police Station Location:</em></strong></td>
            <td class="auto-style37">
                <asp:TextBox ID="TextBox4" runat="server"  Width="200px" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="auto-style27"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style40"><strong>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Location within 10 to 35 characters" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16"><strong><em>Address:</em></strong></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox7" runat="server"  Width="200px" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="auto-style41"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style38"><strong>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox7" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Location within 10 to 55 characters" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </strong></td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16"><strong><em>Contact Number:</em></strong></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox8" runat="server"  Width="200px" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="auto-style41"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style38"><strong>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox8" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Contact number within 8 to 25 characters" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Only Numbers" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </strong></td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16"><strong><em>Email Id:</em></strong></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox9" runat="server"  Width="200px" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style41"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" CssClass="auto-style28" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style38"><strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox9" CssClass="auto-style28" Display="Dynamic" ErrorMessage="Invalid E-mail id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </strong></td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style35">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="32px" Text="Submit" Width="80px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style35">
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

