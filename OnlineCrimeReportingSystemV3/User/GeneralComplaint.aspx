<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="GeneralComplaint.aspx.cs" Inherits="User_GeneralComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
       function fun1(msg) {
           alert(msg);
       }
       function fun2(msg) {
           window.open(msg, '_new');
       }


   </script> 
    <link href="../StyleSheet1.css" rel="stylesheet" />
     <style type="text/css">

    
        .auto-style7
        {
            width: 100%;
        }
        .auto-style8
        {
            width: 311px;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style11
        {
             width: 272px;
             font-family: 'Roboto', Arial, Helvetica, sans-serif;
             font-size: 16px;
         }
        .auto-style13
        {
            width: 320px;
            height: 26px;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
             text-align: right;
         }
        .auto-style14
        {
            width: 272px;
            height: 46px;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style15
        {
            height: 26px;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style17
        {
            width: 320px;
            font-family: 'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
            height: 23px;
        }
        .auto-style18
        {
            width: 272px;
            font-family: 'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
            height: 23px;
        }
        .auto-style19
        {
            height: 23px;
        }
        .auto-style21
        {
            width: 320px;
            font-family: 'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
            height: 64px;
             text-align: right;
         }
        .auto-style22
        {
            width: 272px;
            font-family: 'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
            height: 64px;
        }
        .auto-style23
        {
            height: 64px;
        }
         .auto-style24 {
             width: 320px;
             font-family: 'Roboto', Arial, Helvetica, sans-serif;
             font-size: 16px;
             text-align: right;
         }
    .auto-style25 {
        color: #FF0000;
    }
    .auto-style26 {
             width: 320px;
             font-family: 'Roboto', Arial, Helvetica, sans-serif;
             font-size: 16px;
         }
         .auto-style27 {
             color: #fff;
             background-color: #5cb85c;
             border-color: #4cae4c;
             margin-left: 0px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
     
        
           <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
           <td class="auto-style8" colspan="3" style="font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color:#5cb85c;
            color:white;
        ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; General Complain&nbsp;</td>
           <td class="auto-style8" style="font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            background-color:#5cb85c;
            color:white;
        ">&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>  <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr> <tr>
            <td class="auto-style24"><strong><em>Complaint About Matter:</em></strong></td>
            <td class="auto-style11">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="429px">
                    <asp:ListItem Selected="True">Crime</asp:ListItem>
                    <asp:ListItem>Law and Order</asp:ListItem>
                    <asp:ListItem>Law and Order and Crime</asp:ListItem>
                </asp:RadioButtonList>
               </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style25" ErrorMessage="*"></asp:RequiredFieldValidator>
               </td>
            <td>
                &nbsp;</td>
        </tr> <tr>
            <td class="auto-style24"><strong><em>Area of Offence Happened:</em></strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
               </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" CssClass="auto-style25" ErrorMessage="*"></asp:RequiredFieldValidator>
               </td>
            <td>
                &nbsp;</td>
        </tr>

        
        <tr>
            <td class="auto-style21"><strong><em>Complaint Detail:</em></strong></td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" Height="46px"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="auto-style25" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><strong><em>&nbsp;Occurance Date:</em></strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" CssClass="auto-style25" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"><strong><em>Select Police Station:</em></strong></td>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSourcePol" DataTextField="name" DataValueField="name">
                    <asp:ListItem>Gulshan</asp:ListItem>
                    <asp:ListItem>Rupnagar</asp:ListItem>
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSourcePol" runat="server" ContextTypeName="DataClassesAllDataContext" EntityTypeName="" Select="new (name)" TableName="policeStations">
                </asp:LinqDataSource>
            </td>
            <td style="font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style25" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"><strong><em>Attachment (Any):</em></strong></td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="306px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11" align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit Complaint" CssClass="auto-style27" OnClick="Button1_Click" Height="36px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

