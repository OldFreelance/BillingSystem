<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WriteTo.aspx.cs" Inherits="BillingSystem.WriteTo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" 
        DataSourceID="MessageEntityDataSource" DefaultMode="Insert" 
        onitemcommand="FormView1_ItemCommand" oniteminserting="FormView1_ItemInserting">
        <InsertItemTemplate>
            <table>
                <tr>
                    <td style="font-weight:bold"><asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:WebResources, RS_TITLE%>"></asp:Literal>:</td>
                    <td><asp:TextBox ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:WebResources, RS_TEXT%>"></asp:Literal>:</td>
                    <td><asp:TextBox ID="TextLabel" TextMode="MultiLine" runat="server" Text='<%# Bind("Text") %>' Rows="10" Columns="30"/></td>
                </tr>
            </table>
            <asp:LinkButton ID="SendButton" runat="server" CausesValidation="False" CommandName="Send" Text="<%$ Resources:WebResources, RS_SEND%>" />
            <asp:LinkButton ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="<%$ Resources:WebResources, RS_CANCEL%>" />
        </InsertItemTemplate>
    </asp:FormView>

    <asp:EntityDataSource ID="MessageEntityDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="Messages">
    </asp:EntityDataSource>

</asp:Content>
