<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="CyberCrimeReport.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style15 {
            color: #660033;
            font-size: large;
        }
        .auto-style24 {
            width: 207px;
            height: 55px;
            text-align: right;
        }
        .auto-style25 {
            font-weight: bold;
            font-style: italic;
            color: #660066;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
        }
        .auto-style28 {
            text-align: right;
            height: 32px;
        width: 295px;
    }
        .auto-style29 {
            width: 207px;
            height: 32px;
        }
        .auto-style37 {
            text-align: right;
            height: 23px;
        width: 295px;
    }
        .auto-style38 {
            width: 207px;
            height: 23px;
        }
        .auto-style41 {
            height: 24px;
            font-size: large;
            background-color: #660066;
        }
        .auto-style42 {
            color: #FFFFFF;
            background-color: #660066;
        }
        .auto-style53 {
            width: 207px;
        }
        .auto-style63 {
            height: 55px;
        width: 295px;
    }
        .auto-style64 {
        text-align: right;
        width: 295px;
    }
        .auto-style72 {
        width: 295px;
    }
    .auto-style73 {
        width: 299px;
        height: 23px;
    }
    .auto-style74 {
        width: 299px;
    }
    .auto-style75 {
        width: 299px;
        height: 32px;
    }
    .auto-style76 {
        width: 299px;
        height: 55px;
        text-align: left;
    }
    .auto-style77 {
        color: #FF0000;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style7">
        <tr>
            <td class="auto-style41"></td>
            <td class="auto-style41" colspan="2"><strong><em><span class="auto-style42">Cyber Crime Report</span></em></strong></td>
            <td class="auto-style41">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37" colspan="2"></td>
            <td class="auto-style73">
                </td>
            <td class="auto-style38">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style64" colspan="2"><strong><em>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="Observed date: "></asp:Label>
                </em></strong></td>
            <td class="auto-style74">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" TextMode="Date" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style53">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style77" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="2"><strong><em>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text="Observed time:"></asp:Label>
                </em></strong></td>
            <td class="auto-style75">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Time" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style77" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style64" colspan="2"><strong><em>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style15" Text="Web URL:"></asp:Label>
                </em></strong></td>
            <td class="auto-style74">
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" TextMode="Url" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style53">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style77" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style64" colspan="2"><strong><em>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style15" Text="Any Information? "></asp:Label>
                </em></strong></td>
            <td class="auto-style74">
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" TextMode="MultiLine" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style72">&nbsp;</td>
            <td class="auto-style74">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style63" colspan="2"></td>
            <td class="auto-style76"><strong><em>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Height="38px" OnClick="Button1_Click" Text="Submit" Width="136px" />
                </em></strong></td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style72">&nbsp;</td>
            <td class="auto-style74">
                <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style72">&nbsp;</td>
            <td class="auto-style74">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

