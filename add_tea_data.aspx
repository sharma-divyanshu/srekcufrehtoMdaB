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
        <asp:TableRow><asp:TableCell>Semesters taught:</asp:TableCell><asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1st</asp:ListItem>
            <asp:ListItem>2nd</asp:ListItem>
            <asp:ListItem>3rd</asp:ListItem>
            <asp:ListItem>4th</asp:ListItem>
            <asp:ListItem>5th</asp:ListItem>
            <asp:ListItem>6th</asp:ListItem>
            <asp:ListItem>7th</asp:ListItem>
            <asp:ListItem>8th</asp:ListItem>
            </asp:DropDownList></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Shift:</asp:TableCell><asp:TableCell><asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Morning</asp:ListItem>
            <asp:ListItem>Evening</asp:ListItem>
            </asp:DropDownList></asp:TableCell></asp:TableRow>
        </asp:Table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit Info" />
    </div>
    </form>
</body>
</html>
