<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="Home.css" />
    <div class="banner">
        <asp:Label ID="Label5" runat="server" Text="HOME"></asp:Label>
    </div>
    <div class="lt">

        <asp:HyperLink ID="Label6" runat="server" Text="View Details" CssClass="new" NavigateUrl="~/Sub.aspx" ></asp:HyperLink>

    </div>
    <div class="rt">
        <asp:HyperLink ID="Label7" runat="server" Text="Enquire" CssClass="new" NavigateUrl="~/Login.aspx"></asp:HyperLink>
    </div>

</asp:Content>

