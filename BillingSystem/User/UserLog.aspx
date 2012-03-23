<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLog.aspx.cs" Inherits="BillingSystem.UserLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="Id" DataSourceID="UserLogEntityDataSource" 
    ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="<%$ Resources:WebResources, RS_DATE%>" SortExpression="Date" />
            <%--<asp:BoundField DataField="User" HeaderText="UserId" SortExpression="UserId" />--%>
            <asp:TemplateField >
                <HeaderTemplate>
                    <asp:Label runat="server" Text="<%$ Resources:WebResources, RS_USER%>"></asp:Label>
                </HeaderTemplate>    
                <ItemTemplate>
                    <asp:Label ID="LabelUserName" runat="server" Text='<%# Bind("User.Login") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Text" HeaderText="<%$ Resources:WebResources, RS_TEXT%>" SortExpression="Text" />
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
<asp:EntityDataSource ID="UserLogEntityDataSource" runat="server" 
    ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
    EnableFlattening="False" EntitySetName="UsersLogs" Include="User" AutoGenerateWhereClause="True" OrderBy="it.Date DESC">
    <WhereParameters>
        <asp:QueryStringParameter Name="UserId" QueryStringField="Id" Type="Int32"/>
    </WhereParameters>
</asp:EntityDataSource>
</asp:Content>
