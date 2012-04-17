<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLog.aspx.cs" Inherits="BillingSystem.UserLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="Id" DataSourceID="UserLogEntityDataSource" 
    ForeColor="#333333" GridLines="None" AllowPaging="True" Width="500px">
        <AlternatingRowStyle BackColor="White" />
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
<asp:EntityDataSource ID="UserLogEntityDataSource" runat="server" 
    ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
    EnableFlattening="False" EntitySetName="UsersLogs" Include="User" AutoGenerateWhereClause="True" OrderBy="it.Date DESC">
    <WhereParameters>
        <asp:QueryStringParameter Name="UserId" QueryStringField="Id" Type="Int32"/>
    </WhereParameters>
</asp:EntityDataSource>
</asp:Content>
