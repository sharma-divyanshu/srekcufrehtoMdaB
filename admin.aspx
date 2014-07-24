<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Default2" %>

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
        <div>
        <asp:Panel ID="Panel2" runat="server" BorderColor="Black" CssClass="panel"  BorderStyle="Groove" BorderWidth="5px" HorizontalAlign="Justify">
            <p>
                <strong>Enter Class to be edited:</strong></p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Year"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" Text="Shift"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Morning</asp:ListItem>
                    <asp:ListItem>Evening</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label5" runat="server" Text="Branch"></asp:Label><asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ICE</asp:ListItem>
                </asp:DropDownList>
                 <asp:Label ID="Label6" runat="server" Text="Subjects"></asp:Label><asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button1_Click" />
            </p>
            </asp:Panel>
    <div style="display:inline-block; width:inherit;">
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" CssClass="panel"  BorderStyle="Groove" BorderWidth="5px" HorizontalAlign="Justify">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="290px">
                <asp:ListItem>Enter Student Data</asp:ListItem>
                <asp:ListItem>View Class Data</asp:ListItem>
                <asp:ListItem>View Feedback</asp:ListItem>
                <asp:ListItem>Update Subjects</asp:ListItem>
            </asp:RadioButtonList>
            <center><asp:Button ID="Button2" runat="server" Text="Next" OnClick="Button2_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </center>
        </asp:Panel>
    </div>
    </div>
        </div>
        <asp:Panel ID="Panel3" runat="server" BorderColor="Black" CssClass="panel"  BorderStyle="Groove" BorderWidth="5px" HorizontalAlign="Justify">
            <p>
                <strong>Enter Class to be viewed:</strong></p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label7" runat="server" Text="Year"></asp:Label><asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label8" runat="server" Text="Shift"></asp:Label><asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>Morning</asp:ListItem>
                    <asp:ListItem>Evening</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label9" runat="server" Text="Branch"></asp:Label><asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ICE</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="View" />
            </p>
            </asp:Panel>
    </form>
</body>
</html>
