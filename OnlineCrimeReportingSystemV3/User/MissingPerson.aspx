<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="MissingPerson.aspx.cs" Inherits="User_MissingPerson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;

        }
        .style2
        {
            width: 157px;
        }
        .style3
        {
            width: 279px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style9 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #660066;
        }
        .auto-style10 {
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            background-color: #660066;
        }
     

      .form-control{display:block;width:100%;height:20px;
padding:6px 12px;font-size:14px;line-height:1.42857143;color:#555;background-color:#fff;background-image:none;border:1px solid #ccc;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075);-webkit-transition:border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;-o-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        .auto-style11 {
            width: 235px;
        }
        .auto-style12 {
            color: #FF0000;
            background-color: #FFFF66;
        }
        .auto-style13 {
            width: 14px;
        }
        .auto-style14 {
            color: #FFFFFF;
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            background-color: #660066;
        height: 20px;
    }
    .auto-style16 {
        width: 222px;
    }
    .auto-style17 {
            width: 99px;
        }
    .auto-style18 {
        width: 99px;
        height: 38px;
    }
    .auto-style19 {
        width: 222px;
        height: 38px;
    }
    .auto-style20 {
        width: 235px;
        height: 38px;
    }
    .auto-style21 {
        width: 14px;
        height: 38px;
    }
    .auto-style22 {
        height: 38px;
    }
        .auto-style23 {
            color: #CC0000;
            background-color: #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
 
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style14" colspan="6"><strong><em>
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;

                Missing Person Report:</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Person Name: "></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style23" ErrorMessage="Name in between 5 to 25 characters" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"><strong><em>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Address:"></asp:Label>
                </em></strong></td>
            <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style22">
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style23" ErrorMessage="Address in between 5 to 55 characters" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Reward(if any in tk):"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
            <td class="auto-style13">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Last Seen Place:"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style23" ErrorMessage="Last seen in between 5 to 55 characters" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Date:"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Date"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style9" Text="Time:"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Time"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text="Emergency Contact Number: "></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox7" CssClass="auto-style23" ErrorMessage="Number in between 5 to 25 characters" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style9" Text="Height(cm):"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style9" Text="Weight(kg):"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16"><strong><em>
                <asp:Label ID="Label10" runat="server" CssClass="auto-style9" Text="Image:(100kb max)"></asp:Label>
                </em></strong></td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="227px" />
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style12" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style23" ErrorMessage="Max image size is 100kb" OnServerValidate="CustomValidator5_ServerValidate"></asp:CustomValidator>
                <br />
                <asp:CustomValidator ID="CustomValidator6" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style23" ErrorMessage="Image format only .bmp, .gif, .png, .jpg, .jpeg" OnServerValidate="CustomValidator6_ServerValidate"></asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11"><strong><em>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="34px" OnClick="Button1_Click" Text="SUBMIT" Width="230px" />
                </em></strong></td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

