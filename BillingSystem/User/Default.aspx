<%@ Page Title="<%$ Resources:WebResources, RS_USERS%>" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BillingSystem.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_USERS%>" />
    </h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Id" DataSourceID="BillingEntityDataSource" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:EntityDataSource ID="BillingEntityDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="Users" EntityTypeFilter="User">
    </asp:EntityDataSource>
</asp:Content>
