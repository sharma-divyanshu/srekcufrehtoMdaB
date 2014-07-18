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
        <asp:TableRow><asp:TableCell>Class's Year Currently Teaching:</asp:TableCell><asp:TableCell><asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem>1st Year</asp:ListItem>
            <asp:ListItem>2nd Year</asp:ListItem>
            <asp:ListItem>3rd Year</asp:ListItem>
            <asp:ListItem>4th Year</asp:ListItem>
            </asp:ListBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Branch's Currently Teaching:</asp:TableCell><asp:TableCell><asp:ListBox ID="ListBox2" runat="server">
            <asp:ListItem>CSE - Morning</asp:ListItem>
            <asp:ListItem>CSE - Evening</asp:ListItem>
            <asp:ListItem>ECE - Morning</asp:ListItem>
            <asp:ListItem>ECE - Evening</asp:ListItem>
            <asp:ListItem>IT - Morning</asp:ListItem>
            <asp:ListItem>IT - Evening</asp:ListItem>
            <asp:ListItem>EEE - Morning</asp:ListItem>
            <asp:ListItem>EEE - Evening</asp:ListItem>
            <asp:ListItem>ICE - Morning</asp:ListItem>
            <asp:ListItem>ICE - Evening</asp:ListItem>
            </asp:ListBox></asp:TableCell></asp:TableRow>
        </asp:Table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit Info" />
    </div>
    </form>
</body>
</html>
