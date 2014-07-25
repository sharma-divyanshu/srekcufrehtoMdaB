<%@ Page Language="C#" AutoEventWireup="true" CodeFile="atten.aspx.cs" Inherits="edit_atten" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <link rel="stylesheet" href="css/admin.css" />
    <form id="form1" runat="server">
    <div>
   
        <asp:Panel ID="Panel2" runat="server">
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="mGrid">
            <Columns>
                <asp:BoundField DataField="Branch_ID" HeaderText="Branch_ID" SortExpression="Branch_ID" />
                <asp:BoundField DataField="Shift" HeaderText="Shift" SortExpression="Shift" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Enroll_No" HeaderText="Enroll_No" SortExpression="Enroll_No" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:TemplateField HeaderText="Present">
                    <ItemTemplate>
                        <center><asp:CheckBox ID="chkbox" runat="server"/></center>
                    </ItemTemplate>
                </asp:TemplateField>
             </Columns>
        </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Attendance" />
            <br />
        </asp:Panel>
        
    </div>
    </form>
</body>
</html>
