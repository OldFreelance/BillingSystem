<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="BillingSystem.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Id" 
        DataSourceID="BillingEntityDataSource" ForeColor="#333333" 
        onitemcommand="FormView1_ItemCommand" DefaultMode="Edit" 
        ondatabound="FormView1_DataBound" onitemupdating="FormView1_ItemUpdating" 
        oniteminserting="FormView1_ItemInserting" >
        <EditItemTemplate>
            <table>
                <tr>
                    <td><asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_USERNAME %>"></asp:Literal>:</td>
                    <td><asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' /></td>   
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:WebResources, RS_PASSWORD %>" />:</td>
                    <td><asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:WebResources, RS_FIRST_NAME %>"/>:</td>
                    <td><asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal3" runat="server" Text="<%$ Resources:WebResources, RS_MIDDLE_NAME %>"/>:</td>
                    <td><asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal4" runat="server" Text="<%$ Resources:WebResources, RS_LAST_NAME %>"/>:</td>
                    <td><asp:TextBox ID="SecondNameTextBox" runat="server" Text='<%# Bind("SecondName") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal5" runat="server" Text="<%$ Resources:WebResources, RS_ADDRESS %>"/>:</td>
                    <td><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal12" runat="server" Text="<%$ Resources:WebResources, RS_IP %>"/>:</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IpAddress") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal6" runat="server" Text="<%$ Resources:WebResources, RS_NUMBER%>"/>:</td>
                    <td><asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal7" runat="server" Text="<%$ Resources:WebResources, RS_CONNECTION_DATE%>"/>:</td>
                    <td><asp:Calendar ID="ConnectionDateCalendar" runat="server" SelectedDate='<%# Bind("ConnectionDate")  %>'></asp:Calendar></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal8" runat="server" Text="<%$ Resources:WebResources, RS_TARIFF%>"/>:</td>
                    <td><asp:DropDownList ID="TariffIdDropDownList" runat="server" DataSourceID="TriffsDataSource" DataTextField="Name" DataValueField="Id"/></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal9" runat="server" Text="<%$ Resources:WebResources, RS_IS_ALLOW%>"/>:</td>
                    <td><asp:CheckBox ID="IsAllowCheckBox" runat="server" Checked='<%# Bind("IsAllow") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal10" runat="server" Text="<%$ Resources:WebResources, RS_IS_ADMIN%>"/>:</td>
                    <td><asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' /></td>
                </tr>
                <tr>
                    <td><asp:Literal ID="Literal11" runat="server" Text="<%$ Resources:WebResources, RS_BALANCE%>"/>:</td>
                    <td><asp:TextBox ID="BalanceTextBox" runat="server" Text='<%# Bind("Balance") %>' /></td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="<%$ Resources:WebResources, RS_OK %>" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="<%$ Resources:WebResources, RS_CANCEL %>" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>

    <%--<asp:Button ID="btnOk" runat="server" Text="<%$ Resources:WebResources, RS_OK %>" onclick="btnOk_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:WebResources, RS_CANCEL %>" onclick="btnCancel_Click" />--%>

    <asp:EntityDataSource ID="BillingEntityDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="Users" EntityTypeFilter="User"
        AutoGenerateWhereClause="True">
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="Id" Name="Id" QueryStringField="Id" Type="Int32"/>           
        </WhereParameters>
    </asp:EntityDataSource>
    
    <asp:EntityDataSource ID="TriffsDataSource" runat="server" 
        ConnectionString="name=BillingEntities" DefaultContainerName="BillingEntities" 
        EntitySetName="Tariffs" EntityTypeFilter="Tariff">
    </asp:EntityDataSource>
</asp:Content>
