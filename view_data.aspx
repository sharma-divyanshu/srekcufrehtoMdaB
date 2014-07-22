<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_data.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/admin.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class ="content">
        <p>DISPLAY CLASS DETAILS</p>
        <p>Branch:</p><asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>CSE</asp:ListItem>
        <asp:ListItem>ECE</asp:ListItem>
        <asp:ListItem>EEE</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>ICE</asp:ListItem>
        </asp:DropDownList>
        <p>Year:</p><asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <p>Shift:</p><asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>Morning</asp:ListItem>
        <asp:ListItem>Evening</asp:ListItem>
        </asp:DropDownList>
        <p><asp:Button ID="Button1" runat="server" Text="Display Data" OnClick="Button1_Click" /></p>
    </div>
        <asp:Panel ID="Panel1" runat="server" CssClass="content">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

        </asp:Panel>
    </form>
    </body>
</html>
