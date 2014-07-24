<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upd_stu_data.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="css/admin.css" />
    <form id="form1" runat="server">
    <div class="content">
        <h1>UPDATE STUDENT DETAILS</h1>
        <asp:Panel ID="Panel1" runat="server">
            <p>Search Record via:</p><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Enrollment No.</asp:ListItem>
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Class</asp:ListItem>
            </asp:DropDownList>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </p>
            <asp:Panel ID="Panel3" runat="server">
                <p><asp:Label ID="Label1" runat="server" Text="Enrollment No."></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" Text="Branch"></asp:Label>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ICE</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                <p><asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server">
                <p><asp:Label ID="Label3" runat="server" Text="Year"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" Text="Branch"></asp:Label><asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ICE</asp:ListItem>
                    </asp:DropDownList>
                <asp:Label ID="Label5" runat="server" Text="Shift"></asp:Label><asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                    </asp:DropDownList></p>
            </asp:Panel>
            <asp:Button ID="Button2" runat="server" Text="Get Data" />
         </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True">
            </asp:GridView>
        </asp:Panel>
    </div>

    </form>
</body>
</html>
