<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BillingSystem.Default" %>
<%@ Import Namespace="BillingSystem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Id" DataSourceID="MessageEntityDataSource" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
