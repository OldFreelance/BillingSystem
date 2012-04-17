<%@ Page Title="<%$ Resources:WebResources, RS_USERS%>" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BillingSystem.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_USERS%>" />
    </h2>

    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="<%$ Resources:WebResources, RS_SEARCH%>" 
        onclick="btnSearch_Click" />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Id" DataSourceID="BillingEntityDataSource" ForeColor="#333333" 
        GridLines="None" Width="500px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:HyperLink runat="server" Text="<%$ Resources:WebResources, RS_CREATE%>" NavigateUrl="EditUser.aspx?id=0" ForeColor="White"></asp:HyperLink>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HyperLink runat="server" Text="<%$ Resources:WebResources, RS_EDIT%>" NavigateUrl='<%# "EditUser.aspx?id="+Eval("Id") %>'></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="<%$ Resources:WebResources, RS_DELETE%>" NavigateUrl='<%# "DeleteUser.aspx?id="+Eval("Id") %>'>HyperLink</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" runat="server" Text="<%$ Resources:WebResources, RS_LOG%>" NavigateUrl='<%# "UserLog.aspx?id="+Eval("Id") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Login" HeaderText="<%$ Resources:WebResources, RS_USERNAME%>" SortExpression="Login" />
            <asp:BoundField DataField="FirstName" HeaderText="<%$ Resources:WebResources, RS_FIRST_NAME%>" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="<%$ Resources:WebResources, RS_MIDDLE_NAME%>" SortExpression="MiddleName" />
            <asp:BoundField DataField="SecondName" HeaderText="<%$ Resources:WebResources, RS_LAST_NAME%>" SortExpression="SecondName" />
            <%--<asp:BoundField DataField="Tariff.Name" HeaderText="<%$ Resources:WebResources, RS_TARIFF%>" SortExpression="TariffId" />--%>
            <asp:BoundField DataField="Balance" HeaderText="<%$ Resources:WebResources, RS_BALANCE%>" SortExpression="Balance" />
            <asp:BoundField DataField="Number" HeaderText="<%$ Resources:WebResources, RS_NUMBER%>" SortExpression="Number" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:EntityDataSource ID="BillingEntityDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="Users" EntityTypeFilter="User">
    </asp:EntityDataSource>
</asp:Content>
