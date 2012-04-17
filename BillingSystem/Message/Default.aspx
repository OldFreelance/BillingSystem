<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BillingSystem.Default" %>
<%@ Import Namespace="BillingSystem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:WebResources, RS_MESSAGES%>" />
    </h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Id" DataSourceID="MessageEntityDataSource" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="<%$ Resources:WebResources, RS_MESSAGE_OPEN%>" NavigateUrl='<%# "Details.aspx?Id="+Eval("Id") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="IsReaded" HeaderText="<%$ Resources:WebResources, RS_IS_READED%>" SortExpression="Title"  runat="server"/>
            <asp:BoundField DataField="Title" HeaderText="<%$ Resources:WebResources, RS_TITLE%>" SortExpression="Title" />
            <asp:BoundField DataField="Text" HeaderText="<%$ Resources:WebResources, RS_TEXT%>" SortExpression="Text">
            </asp:BoundField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_USER_FROM%>"></asp:Literal>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Literal runat="server" Text='<%#Eval("User.Login")%>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
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

    <asp:EntityDataSource ID="MessageEntityDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="Messages" AutoGenerateWhereClause="True" Include="User" OrderBy="it.Id DESC">
        <WhereParameters>
            <asp:Parameter Name="UserToId" Type="Int32"/>
        </WhereParameters>
    </asp:EntityDataSource>

    <% if (!User.IsInRole("Admin"))
       { %>
            <asp:Button ID="btnWriteToAdmin" runat="server" 
        Text="<%$ Resources:WebResources, RS_WRITE_TO_ADMIN%>" 
        onclick="btnWriteToAdmin_Click" />
    <% } %>
</asp:Content>
