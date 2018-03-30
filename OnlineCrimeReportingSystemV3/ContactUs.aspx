<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   <script type="text/javascript">
       function fun1(msg) {
           alert(msg);
       }


   </script>


    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
       
        .auto-style7
        {
            width: 100%;
        }
        .auto-style8
        {
            width: 201px;
        }
        .auto-style10
        {
            width: 284px;
        }
        .auto-style11
        {
            width: 201px;
            height: 36px;
        }
        .auto-style13
        {
            width: 284px;
            height: 36px;
        }
        .newStyle1
        {
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style15
        {
            width: 201px;
            height: 21px;
        }
        .auto-style17
        {
            width: 284px;
            height: 21px;
        }
        .auto-style18
        {
            height: 21px;
        }
        .auto-style19
        {
            height: 23px;
        }
        .auto-style20
        {
            width: 201px;
            height: 16px;
        }
        .auto-style22
        {
            width: 284px;
            height: 16px;
        }
        .auto-style23
        {}
        .auto-style24
        {
            width: 290px;
            height: 270px;
        }
        .auto-style25
        {
            font-family: 'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
            width: 185px;
        }
        .auto-style26
        {
            width: 185px;
            height: 16px;
        }
        .auto-style27
        {
            width: 185px;
        }
        .auto-style28
        {
            width: 185px;
            height: 21px;
        }
    .auto-style29 {
        color: #FFFFFF;
        background-color: #009900;
    }
    .auto-style30 {
        color: #fff;
        background-color: #d9534f;
        border-color: #d43f3a;
    }
        .auto-style35 {
            color: #FF0000;
        }
        .auto-style36 {
            width: 532px;
            height: 16px;
        }
        .auto-style37 {
            width: 532px;
            height: 36px;
        }
        .auto-style38 {
            width: 532px;
        }
        .auto-style39 {
            width: 532px;
            height: 21px;
        }
        .auto-style40 {
            color: #CC0000;
            background-color: #FFFF00;
        }
        .auto-style41 {
            height: 16px;
        }
        .auto-style42 {
            height: 36px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 404px">


        <table class="auto-style7">
            <tr>
                <td colspan="6" class="auto-style19" >&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style20"></td>
                <td class="auto-style26"></td>
                <td class="auto-style22"></td>
                <td class="auto-style41"></td>
                <td class="auto-style36"></td>
                <td class="auto-style23" rowspan="5">
                    <img class="auto-style24" src="imgs/30_3_2016_13_16_17_contact-us-1.png" align="right" /></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style25">Your Name:</td>
                <td class="auto-style13"> 
                    <asp:TextBox ID="TxtName" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style42"> 
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" CssClass="auto-style35" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style37"> 
                    <strong><em>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtName" CssClass="auto-style40" ErrorMessage="Name is in between 5  to 25 characters" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style25">Your Email address :</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtEmail" runat="server" Width="200px" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmail" CssClass="auto-style35" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style38">
                    <strong><em>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" CssClass="auto-style40" ErrorMessage="Invalid email type" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style25">Your Contact No.:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtContact" runat="server" Width="200px" CssClass="form-control" MaxLength="16" TextMode="Number">+88</asp:TextBox>
                </td>
                <td>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtContact" CssClass="auto-style35" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style38">
                    <strong><em>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TxtContact" CssClass="auto-style40" ErrorMessage="Contact number is in between 5  to 25 characters" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style25">Comments/Suggestions/
                    <br />
                    Complaints/Appreciations</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtComment" runat="server" Height="112px" TextMode="MultiLine" Width="200px" CssClass="form-control" ></asp:TextBox>
                </td>
                <td>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtComment" CssClass="auto-style35" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style38">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style28"></td>
                <td class="auto-style17">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style29" Height="34px" OnClick="Button1_Click" Text="Submit" Width="81px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" CssClass="auto-style30" Height="34px" Width="86px" OnClick="BtnReset_Click" />
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style39">
                    &nbsp;</td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style10"><strong><em>
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    </em></strong></td>
                <td>&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

