<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_atten.aspx.cs" Inherits="edit_atten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="css/admin.css" />
    <form id="form1" runat="server">
    <div class="content">
        <asp:Panel ID="Panel1" runat="server">
            <h1>Enter Class to be edited:</h1>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Year"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label2" runat="server" Text="Shift"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Morning</asp:ListItem>
                    <asp:ListItem>Evening</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label><asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ICE</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </p>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </asp:Panel>
        
    </div>
    </form>
</body>
</html>
