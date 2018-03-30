<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PoliceUserLogin.aspx.cs" Inherits="_Default" %>

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
            
            font-family:'Roboto', Arial, Helvetica, sans-serif;
            font-size: 16px;
        }
        .auto-style8
        {
            width: 279px;
        }
        .auto-style9 {
            color: #fff;
            background-color: #5cb85c;
            border-color: #4cae4c;
            font-size: large;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div style="height: 550px">

         <table class="auto-style7">
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp; Enter Your Email ID</td>
                 <td>
                     <asp:TextBox ID="TxtEmailId" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmailId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp; Enter Your Password</td>
                 <td>
                     <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password" Width="200px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="101px" CssClass="auto-style9" Height="40px" />
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>

    </div>
</asp:Content>


