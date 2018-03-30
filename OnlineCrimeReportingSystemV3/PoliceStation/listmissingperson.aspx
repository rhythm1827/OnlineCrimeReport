<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation/PoliceMasterPage.master" AutoEventWireup="true" CodeFile="listmissingperson.aspx.cs" Inherits="PoliceStation_listmissingperson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        width: 100px;
    }
    .auto-style9 {
        background-color: #660066;
    }
    .auto-style10 {
        width: 100px;
        background-color: #660066;
    }
    .auto-style12 {
        color: #FFFFFF;
        font-size: large;
        font-family: "Times New Roman", Times, serif;
        width: 1001px;
        background-color: #660066;
    }
    .auto-style13 {
        margin-left: 0px;
    }
    .auto-style14 {
        width: 1001px;
    }
    .auto-style15 {
        width: 100px;
        height: 23px;
    }
    .auto-style16 {
        width: 1001px;
        height: 23px;
    }
    .auto-style17 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style7">
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style12"><strong><em>Missing Persons:</em></strong></td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16"></td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style14">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style13" DataKeyNames="Id" DataSourceID="LinqDataSourceListMissingPersons" GridLines="Vertical" Height="16px" PageSize="5" Width="1001px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="complainid" HeaderText="complainid" SortExpression="complainid" />
                    <asp:BoundField DataField="complainby" HeaderText="complainby" SortExpression="complainby" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="reward" HeaderText="reward" SortExpression="reward" />
                    <asp:BoundField DataField="lastplace" HeaderText="lastplace" SortExpression="lastplace" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="cnumber" HeaderText="cnumber" SortExpression="cnumber" />
                    <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
                    <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerSettings PageButtonCount="5" Position="TopAndBottom" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSourceListMissingPersons" runat="server" ContextTypeName="DataClassesAllDataContext" EntityTypeName="" TableName="missingPersons">
            </asp:LinqDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

