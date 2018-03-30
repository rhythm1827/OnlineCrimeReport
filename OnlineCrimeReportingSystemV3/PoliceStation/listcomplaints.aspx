<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation/PoliceMasterPage.master" AutoEventWireup="true" CodeFile="listcomplaints.aspx.cs" Inherits="PoliceStation_listcomplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        width: 95px;
    }
    .auto-style9 {
        font-size: large;
        font-family: "Times New Roman", Times, serif;
        color: #FFFFFF;
        width: 828px;
        background-color: #660066;
    }
    .auto-style10 {
        width: 828px;
    }
    .auto-style11 {
        width: 95px;
        background-color: #660066;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9"><strong><em>General Complains:</em></strong></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10">
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#3333CC" BorderColor="#0000CC" BorderStyle="Groove" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="LinqDataSourceComplainList" ForeColor="White" Height="19px" Width="1091px">
                <AlternatingRowStyle BorderWidth="2px" ForeColor="White" />
                <CommandRowStyle ForeColor="White" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <EmptyDataRowStyle ForeColor="White" />
                <FieldHeaderStyle ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="matter" HeaderText="matter" SortExpression="matter" />
                    <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                    <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="policestation" HeaderText="policestation" SortExpression="policestation" />
                    <asp:BoundField DataField="attachment" HeaderText="attachment" SortExpression="attachment" />
                    <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertRowStyle ForeColor="White" />
                <PagerSettings PageButtonCount="1" Position="TopAndBottom" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#6699FF" ForeColor="White" Height="1px" />
            </asp:DetailsView>
            <asp:LinqDataSource ID="LinqDataSourceComplainList" runat="server" ContextTypeName="DataClassesAllDataContext" EntityTypeName="" TableName="generalComplains">
            </asp:LinqDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
</table>
</asp:Content>

