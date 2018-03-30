<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">
         function fun1(msg) {
             alert(msg);
         }


   </script>
    <link href="StyleSheet1.css" rel="stylesheet" />


    <style type="text/css">
        
        .newStyle1
        {
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style9 {
        width: 100%;
        height: 533px;
        /*border: 1px solid #EEEEEE;*/
    }
    .auto-style11 {
        height: 628px;
        width: 824px;
        margin-left: 3px;
    }
    .auto-style13 {
        width: 213px;
    }
    .auto-style16 {
            width: 213px;
            text-align: left;
        }
    .auto-style24 {
        width: 213px;
        text-align: left;
        height: 30px;
    }
    .auto-style25 {
        width: 155px;
        height: 30px;
    }
    .auto-style28 {
        width: 163px;
        height: 30px;
    }
    .auto-style33 {
        text-align: left;
    }
    .auto-style34 {
        font-weight: bold;
        color: #FFFFFF;
        font-size: large;
    }
    .auto-style35 {
        width: 213px;
        text-align: right;
    }
        .auto-style37 {
            font-size: large;
        }
        .auto-style38 {
            margin-left: 0px;
        }
        .auto-style39 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style41 {
            width: 213px;
            text-align: left;
            height: 53px;
        }
        .auto-style42 {
            width: 155px;
            height: 53px;
        }
        .auto-style43 {
            width: 163px;
            height: 53px;
        }
        .auto-style45 {
            width: 405px;
            height: 30px;
        }
        .auto-style46 {
            width: 405px;
            height: 53px;
        }
        .auto-style64 {
            width: 213px;
            text-align: left;
            height: 23px;
        }
        .auto-style65 {
            width: 155px;
            height: 23px;
        }
        .auto-style66 {
            width: 405px;
            height: 23px;
        }
        .auto-style67 {
            width: 163px;
            height: 23px;
        }
        .auto-style69 {
            width: 155px;
            text-align: right;
        }
        .auto-style70 {
            width: 163px;
            height: 12px;
        }
        .auto-style71 {
            width: 213px;
            text-align: left;
            height: 12px;
        }
        .auto-style72 {
            width: 155px;
            height: 12px;
        }
        .auto-style73 {
            width: 405px;
            height: 12px;
        }
        .auto-style75 {
            width: 155px;
        }
        .auto-style76 {
            width: 405px;
        }
        .auto-style78 {
            height: 23px;
        }
        .auto-style79 {
            height: 12px;
        }
        .auto-style80 {
            height: 30px;
        }
        .auto-style81 {
            height: 53px;
        }
        .auto-style82 {
            color: #FF0000;
        }
        .auto-style83 {
            width: 163px;
        }
        .auto-style85 {
            width: 91px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style11">

        <br />




        <script type ="text/javascript">

            var validFilesTypes = ["bmp", "gif", "png", "jpg", "jpeg"];

            function ValidateFile() {

                var file = document.getElementById("<%=FileUpload1.ClientID%>");

                var label = document.getElementById("<%=Label16.ClientID%>");

                var path = file.value;

                var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();

                var isValidFile = false;

                for (var i = 0; i < validFilesTypes.length; i++) {

                    if (ext == validFilesTypes[i]) {

                        isValidFile = true;

                        break;

                    }

                }

                if (!isValidFile) {

                    label.style.color = "red";

                    label.innerHTML = "Invalid File. Please upload a File with" +

                        " extension:\n\n" + validFilesTypes.join(", ");

                }

                return isValidFile;

            }

</script>






        <table class="auto-style9">
            <tr>
                <td class="auto-style83">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style75" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style76">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style83"></td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label1" runat="server" Text="Email Id:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style82" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83"></td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label2" runat="server" Text="Name:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style82" ErrorMessage="Name at least 5 to 30 characters long" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83"></td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label15" runat="server" Text="Gender:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#660066" RepeatDirection="Horizontal" Height="24px" Width="221px">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style67"></td>
                <td class="auto-style64"><strong><em>
                    <asp:Label ID="Label13" runat="server" Text="Password: " CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style65" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style78">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style66">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox3" CssClass="auto-style82" ErrorMessage="Password at least 8 to 20 characters long" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">&nbsp;</td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label14" runat="server" Text="Contact Number:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox5" CssClass="auto-style82" ErrorMessage="Contact at least 5 to 20 characters long" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style70"></td>
                <td class="auto-style71"><strong><em>
                    <asp:Label ID="Label6" runat="server" Text="Address:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style72" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style39" Height="43px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style79">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style73">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox6" CssClass="auto-style82" ErrorMessage="Address at least 5 to 35 characters long" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83"></td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label7" runat="server" Text="District: " CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style69" colspan="2">
                    <div class="auto-style33">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceDistricts" DataTextField="name" DataValueField="name" Height="30px" Width="225px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceDistricts" runat="server" ConnectionString="<%$ ConnectionStrings:projectLocalDBConnectionString %>" SelectCommand="SELECT [name] FROM [districts]"></asp:SqlDataSource>
                    </div>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style24"><strong><em>
                    <asp:Label ID="Label8" runat="server" Text="Postal Code:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style80">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator6" runat="server" ControlToValidate="TextBox7" CssClass="auto-style82" ErrorMessage="Postal Code at least 4 to 10 characters!" OnServerValidate="CustomValidator6_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83"></td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label9" runat="server" Text="Educational Qualification:" CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style38" Height="30px" Width="225px" AutoPostBack="True">
                        <asp:ListItem>MSc/MA/MBA/Kamil</asp:ListItem>
                        <asp:ListItem>BSc/BBA/BA/Fazil</asp:ListItem>
                        <asp:ListItem>HSC/Alim</asp:ListItem>
                        <asp:ListItem>SSC/Dakhil</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>JSC/JDC</asp:ListItem>
                        <asp:ListItem>PSC</asp:ListItem>
                        <asp:ListItem>None</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style83">&nbsp;</td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label10" runat="server" Text="Photo Id Number: " CssClass="auto-style37"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Height="20px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator7" runat="server" ControlToValidate="TextBox3" CssClass="auto-style82" ErrorMessage="Photo id number at most 40 characters" OnServerValidate="CustomValidator7_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">&nbsp;</td>
                <td class="auto-style16"><strong><em>
                    <asp:Label ID="Label17" runat="server" CssClass="auto-style37" Text="Nearest Police Station:"></asp:Label>
                    </em></strong></td>
                <td class="auto-style75" colspan="2">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourcePoliceStation" DataTextField="name" DataValueField="name" Height="30px" Width="225px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourcePoliceStation" runat="server" ConnectionString="<%$ ConnectionStrings:projectLocalDBConnectionString %>" SelectCommand="SELECT [name] FROM [policeStation]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style41"><strong><em>
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style37" Text="Image:"></asp:Label>
                    (100kb max)</em></strong></td>
                <td class="auto-style42" colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="229px" Height="30px" />
                </td>
                <td class="auto-style81">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style46">
                    <strong>
                    <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style82" ErrorMessage="Image Size not more than 100kb" OnServerValidate="CustomValidator5_ServerValidate"></asp:CustomValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator8" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style82" ErrorMessage="only select .bmp, .jpg, .jpeg, .gif, .png files" OnServerValidate="CustomValidator8_ServerValidate"></asp:CustomValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style83"></td>
                <td class="auto-style35"></td>
                <td class="auto-style69"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#660033" CssClass="auto-style34" Height="41px" Text="Register" Width="115px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style85">
                    &nbsp;</td>
                <td></td>
                <td class="auto-style76">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style83">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style75" colspan="2">
                    <asp:Label ID="Label18" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style76">&nbsp;</td>
            </tr>
            </table>



        




    </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    </asp:Content>

