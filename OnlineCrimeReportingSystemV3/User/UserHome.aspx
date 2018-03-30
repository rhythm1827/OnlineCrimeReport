<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
     
    .auto-style7
    {
        width: 100%;
    }
    .auto-style12
    {
        width: 202px;
    }
    .auto-style13
    {
        width: 203px;
    }
        .auto-style15
        {
            width: 202px;
            height: 24px;
        }
        .auto-style16
        {
            width: 203px;
            height: 24px;
        }
        .auto-style17
        {
            height: 24px;
            width: 401px;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style18
        {
            width: 401px;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style21
        {
            width: 202px;
            height: 22px;
        }
        .auto-style22
        {
            width: 203px;
            height: 22px;
        }
        .auto-style23
        {
            width: 401px;
            font-family: 'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
            height: 22px;
        }
    .auto-style24 {
        color: #fff;
        background-color: #000066;
        border-color: #eea236;
        font-weight: bold;
        font-style: italic;
        font-family: "Times New Roman", Times, serif;
        font-size: large;
    }
    .auto-style25 {
        width: 256px;
        height: 24px;
    }
    .auto-style26 {
        width: 256px;
    }
    .auto-style27 {
        width: 256px;
        height: 22px;
    }
    .auto-style29 {
        color: #fff;
        background-color: #660066;
        border-color: #4cae4c;
        font-weight: bold;
        font-style: italic;
        font-family: "Times New Roman", Times, serif;
        font-size: large;
    }
    .auto-style30 {
        color: #fff;
        background-color: #003300;
        border-color: #46b8da;
        font-weight: bold;
        font-style: italic;
        font-family: "Times New Roman", Times, serif;
        font-size: large;
    }
    .auto-style28 {
        color: #fff;
        background-color: #663300;
        border-color: #2e6da4;
        font-weight: bold;
        font-style: italic;
        font-family: "Times New Roman", Times, serif;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 160px">



        <table class="auto-style7">
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style16"></td>
                <td class="auto-style15"></td>
                <td class="auto-style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26"><strong><em>
                    <asp:Button ID="Button6" runat="server" Height="40px" Text="Missing Person Complain" Width="270px" CssClass="auto-style28" PostBackUrl="~/User/MissingPerson.aspx" BorderColor="#663300" BorderStyle="Groove"/>
                    </em></strong></td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">
         <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#660066" Visible="False"></asp:Label> </td>
                <td class="auto-style18">
                    <strong><em>
                    <asp:Button ID="Button5" runat="server" Height="40px" Text="Cyber Crime Complain" Width="270px" CssClass="auto-style30" PostBackUrl="~/User/CyberCrimeReport.aspx" BorderColor="#003300" BorderStyle="Groove" />
                    </em></strong>
                </td>
            </tr>
             <tr>
                <td class="auto-style27"></td>
                <td class="auto-style22"><strong><em>
                    <asp:Button ID="Button3" runat="server" Height="40px" Text="Missing Valuable Report" Width="270px" CssClass="auto-style24" PostBackUrl="~/User/MissingValuable.aspx" BorderColor="#000066" BorderStyle="Groove" />
                    </em></strong></td>
                <td class="auto-style21"><strong><em>
                    <asp:Button ID="Button1" runat="server" Height="40px" Text="General Complain" Width="270px" CssClass="auto-style29" PostBackUrl="~/User/GeneralComplaint.aspx" BorderColor="#660066" BorderStyle="Groove" />
                    </em></strong></td>
                <td class="auto-style23" align="right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" align="right">&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style13" align="right">
                    &nbsp;</td>
                <td class="auto-style12" align="right">
                    &nbsp;</td>
                <td align="center" class="auto-style18">
                    &nbsp;</td>
            </tr>
                        
        </table>



    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    </asp:Content>

