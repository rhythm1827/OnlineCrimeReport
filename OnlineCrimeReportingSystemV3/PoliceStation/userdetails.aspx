<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation/PoliceMasterPage.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="PoliceStation_userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
      </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSourceUsers" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
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
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:LinqDataSource ID="LinqDataSourceUsers" runat="server" ContextTypeName="DataClassesAllDataContext" EntityTypeName="" TableName="u_registrations">
    </asp:LinqDataSource>
</asp:Content>

