<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation/PoliceMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PoliceStation_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <script type="text/javascript">
        function fun1(msg) {
            alert(msg);
        }


   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Welcome
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

