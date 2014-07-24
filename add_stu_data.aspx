<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_stu_data.aspx.cs" Inherits="Default2" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="css/admin.css" />
    <form id="form1" runat="server">
    <div class="content">
        <h1>ENTER STUDENT DETAILS</h1>
        <br /><br />
        <asp:Table runat="server">
        <asp:TableRow><asp:TableCell>Enrollment No.:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>First Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Last Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Year:</asp:TableCell><asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Branch:</asp:TableCell><asp:TableCell><asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            <asp:ListItem>ICE</asp:ListItem>
            </asp:DropDownList></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Shift:</asp:TableCell><asp:TableCell><asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Morning</asp:ListItem>
            <asp:ListItem>Evening</asp:ListItem>
            </asp:DropDownList></asp:TableCell></asp:TableRow>
        </asp:Table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit Info" OnClick="Button1_Click" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
