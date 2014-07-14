<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="css/style.css" />
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" CssClass="navbar">
            BUNK-IT&nbsp; <a href="javascript:__doPostBack('LinkButton1','')">Home</a><a href="javascript:__doPostBack('LinkButton2','')">Student Login</a><a href="javascript:__doPostBack('LinkButton3','')">Teacher Login</a></asp:Panel>
        <p>
        Hello duniya!!
    </p>
    </div>
    </form>
</body>
</html>
