<%@ Page Language="C#" AutoEventWireup="true" CodeFile="class_view.aspx.cs" Inherits="class_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="mGrid">
            <Columns>
                <asp:BoundField DataField="Branch_ID" HeaderText="Branch_ID" SortExpression="Branch_ID" />
                <asp:BoundField DataField="Shift" HeaderText="Shift" SortExpression="Shift" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Enroll_No" HeaderText="Enroll_No" SortExpression="Enroll_No" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="att_sub_1" HeaderText="att_sub_1" SortExpression="att_sub_1" />
                <asp:BoundField DataField="att_sub_2" HeaderText="att_sub_2" SortExpression="att_sub_2" />
                <asp:BoundField DataField="att_sub_3" HeaderText="att_sub_3" SortExpression="att_sub_3" />
                <asp:BoundField DataField="att_sub_4" HeaderText="att_sub_4" SortExpression="att_sub_4" />
                <asp:BoundField DataField="att_sub_5" HeaderText="att_sub_5" SortExpression="att_sub_5" />
                <asp:BoundField DataField="att_sub_6" HeaderText="att_sub_6" SortExpression="att_sub_6" />
                <asp:BoundField DataField="att_sub_7" HeaderText="att_sub_7" SortExpression="att_sub_7" />
                <asp:BoundField DataField="att_sub_8" HeaderText="att_sub_8" SortExpression="att_sub_8" />
                <asp:BoundField DataField="att_sub_9" HeaderText="att_sub_9" SortExpression="att_sub_9" />
                <asp:BoundField DataField="att_sub_10" HeaderText="att_sub_10" SortExpression="att_sub_10" />
                <asp:BoundField DataField="att_sub_11" HeaderText="att_sub_11" SortExpression="att_sub_11" />
                <asp:BoundField DataField="att_sub_12" HeaderText="att_sub_12" SortExpression="att_sub_12" />
                <asp:BoundField DataField="att_sub_13" HeaderText="att_sub_13" SortExpression="att_sub_13" />
                <asp:BoundField DataField="att_sub_14" HeaderText="att_sub_14" SortExpression="att_sub_14" />
                <asp:BoundField DataField="att_sub_15" HeaderText="att_sub_15" SortExpression="att_sub_15" />
                <asp:BoundField DataField="att_tot" HeaderText="att_tot" SortExpression="att_tot" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:GridView ID="GridView2" runat="server" CssClass="mGrid" DataSourceID="SqlDataSource2">
        </asp:GridView>
    </form>
</body>
</html>
