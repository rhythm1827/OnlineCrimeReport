<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation/PoliceMasterPage.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="PoliceStation_userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style7 {
            margin-right: 0px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="LinqDataSourceReg" CssClass="auto-style7" Height="16px" Width="1261px" PageSize="5">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
            <asp:BoundField DataField="postalCode" HeaderText="postalCode" SortExpression="postalCode" />
            <asp:BoundField DataField="edu" HeaderText="edu" SortExpression="edu" />
            <asp:BoundField DataField="photoid" HeaderText="photoid" SortExpression="photoid" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="policestation" HeaderText="policestation" SortExpression="policestation" />
        </Columns>
        <RowStyle BackColor="#993366" />
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSourceReg" runat="server" ContextTypeName="DataClassesAllDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="u_registrations">
    </asp:LinqDataSource>
</asp:Content>

