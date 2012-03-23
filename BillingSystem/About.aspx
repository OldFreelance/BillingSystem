<%@ Page Title="<%$ Resources:WebResources, RS_ABOUT%>" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="BillingSystem.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:Literal runat="server" Text="<%$ Resources:WebResources, RS_ABOUT%>" />
    </h2>
    <p>
        <asp:Label runat="server" Text="<%$ Resources:WebResources, RS_ABOUT_TEXT%>"></asp:Label>
    </p>
</asp:Content>
