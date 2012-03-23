<%@ Page Title="<%$ Resources:WebResources, RS_HOME%>" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="BillingSystem._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <% if (HttpContext.Current.User.Identity.IsAuthenticated)
       { %>

    <asp:Label ID="lblInternetDisabled" runat="server" Text="<%$ Resources:WebResources, RS_INTERNET_DISABLED %>" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="font-weight:bold"><asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_USERNAME%>" />:</td>
                    <td><asp:Label ID="LoginLabel" runat="server" Text='<%# Bind("Login") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:WebResources, RS_FIRST_NAME%>"/>:</td>
                    <td><asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:WebResources, RS_MIDDLE_NAME%>"/>:</td>
                    <td><asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Bind("MiddleName") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal ID="Literal3" runat="server" Text="<%$ Resources:WebResources, RS_LAST_NAME%>"/>:</td>
                    <td><asp:Label ID="SecondNameLabel" runat="server" Text='<%# Bind("SecondName") %>' /></td>
                </tr>
                <tr>
                    <td style="font-weight:bold"><asp:Literal ID="Literal4" runat="server" Text="<%$ Resources:WebResources, RS_BALANCE%>"/>:</td>
                    <td><asp:Label ID="BalanceLabel" runat="server" Text='<%# Bind("Balance") %>' /></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableFlattening="False" EntitySetName="Users" EntityTypeFilter="User"
        Where="it.Login=@Username">
        <WhereParameters>
            <asp:Parameter Name="Username" Type="String"/>
        </WhereParameters>
    </asp:EntityDataSource>

    <asp:Button ID="btnPrint" runat="server" Text="<%$ Resources:WebResources, RS_PRINT_QUITTANCE%>" onclick="btnPrint_Click"/>
    <% }
       else
       {%>
            <asp:Label runat="server" Text="<%$ Resources:WebResources, RS_NOT_AUTORIZED_TEXT%>"></asp:Label>
    <% } %>
</asp:Content>
