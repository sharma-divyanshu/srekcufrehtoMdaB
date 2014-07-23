<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_data.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/admin.css" />
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:Panel ID="Panel1" runat="server" CssClass="content">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
            </asp:SqlDataSource>
        </asp:Panel>
    </form>
    </body>
</html>
