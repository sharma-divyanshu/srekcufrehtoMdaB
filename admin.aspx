<<<<<<< HEAD

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/title_footer.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Default2" %>
>>>>>>> origin/master
=======
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Default2" %>
>>>>>>> origin/master

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <link rel="stylesheet" href="css/admin.css" />
    <div class="placeholder">
    <div class="content">
        <center>
        <p>User Name*:</p> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>Password*:</p><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
        <p><asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        </center>
    </div>
    <div class="content">
        <asp:Panel ID="Panel1" runat="server">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="290px">
                <asp:ListItem>Enter Student Data</asp:ListItem>
                <asp:ListItem>Enter Teacher Data</asp:ListItem>
                <asp:ListItem>View Class Data</asp:ListItem>
                <asp:ListItem>Update Student Data</asp:ListItem>
                <asp:ListItem>Update Teacher Data</asp:ListItem>
            </asp:RadioButtonList>
            <center><asp:Button ID="Button2" runat="server" Text="Next" OnClick="Button2_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </center>
        </asp:Panel>
    </div>
    </div>
    </form>
</body>
</html>
