<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="BillingSystem.Details" %>
<%@ Import Namespace="BillingSystem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" 
        DataSourceID="MessageEntityDataSource" CellPadding="4" ForeColor="#333333">
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table>
                <tr>
                    <td style="font-weight:bold"><asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_TITLE%>"></asp:Literal>:</td>
                    <td><asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_USER_FROM%>"></asp:Literal>:</td>
                    <td><asp:Label ID="UserFromIdLabel" runat="server" Text='<%# Bind("User.Login") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_TEXT%>"></asp:Literal>:</td>
                    <td><%--<asp:Label ID="TextLabel" runat="server" Text='<%# Bind("Text") %>'/>--%>
                        <asp:TextBox ID="TextBoxText" runat="server" Text='<%# Bind("Text") %>' TextMode="MultiLine" ReadOnly="True" BorderStyle="None" BorderWidth="0" Wrap="True" Rows="10" Columns="30"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="<%$ Resources:WebResources, RS_ANSWER%>" NavigateUrl='<%# "WriteTo.aspx?Id="+Eval("UserFromId") %>'></asp:HyperLink></td>
                </tr>
            </table>
        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>

    <asp:EntityDataSource ID="MessageEntityDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="Messages" Include="User" AutoGenerateWhereClause="True">
        <WhereParameters>
            <asp:QueryStringParameter QueryStringField="Id" Name="Id" Type="Int32"/>
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
