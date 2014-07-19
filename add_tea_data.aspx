<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_tea_data.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="css/admin.css" />
    <form id="form1" runat="server">
    <div class="content">
        <h1>ENTER TEACHER DETAILS</h1>
        <br /><br />
        <asp:Table runat="server">
        <asp:TableRow><asp:TableCell>Employee ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>First Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Last Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell><asp:TableRow runat="server"><asp:TableCell>Select Year:</asp:TableCell><asp:TableCell><asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            </asp:ListBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell>Select Branch:</asp:TableCell><asp:TableCell><asp:ListBox ID="ListBox2" runat="server">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            <asp:ListItem>ICE</asp:ListItem>
            </asp:ListBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell>Select Shift:</asp:TableCell><asp:TableCell><asp:ListBox ID="ListBox4" runat="server">
            <asp:ListItem>Morning</asp:ListItem>
            <asp:ListItem>Evening</asp:ListItem>
            </asp:ListBox></asp:TableCell></asp:TableRow></asp:TableCell><asp:TableCell><asp:Button ID="Button2" runat="server" Text="Add Class" /></asp:TableCell><asp:TableCell><asp:ListBox ID="ListBox3" runat="server"></asp:ListBox></asp:TableCell></asp:TableRow>
        </asp:Table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit Info"/>
    </div>
    </form>
</body>
</html>
