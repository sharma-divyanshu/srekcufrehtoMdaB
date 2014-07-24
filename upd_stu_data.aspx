<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upd_stu_data.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="css/style.css" />
    <form id="form1" runat="server">
    <div class="content">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CSE] WHERE [ID] = @original_ID AND [Branch_ID] = @original_Branch_ID AND [Shift] = @original_Shift AND [Year] = @original_Year AND [Enroll_No] = @original_Enroll_No AND [Name] = @original_Name AND [att_sub_1] = @original_att_sub_1 AND [att_sub_2] = @original_att_sub_2 AND [att_sub_3] = @original_att_sub_3 AND [att_sub_4] = @original_att_sub_4 AND [att_sub_5] = @original_att_sub_5 AND [att_sub_6] = @original_att_sub_6 AND [att_sub_7] = @original_att_sub_7 AND [att_sub_8] = @original_att_sub_8 AND [att_sub_9] = @original_att_sub_9 AND [att_sub_10] = @original_att_sub_10 AND [att_sub_11] = @original_att_sub_11 AND [att_sub_12] = @original_att_sub_12 AND [att_sub_13] = @original_att_sub_13 AND [att_sub_14] = @original_att_sub_14 AND [att_sub_15] = @original_att_sub_15 AND [att_tot] = @original_att_tot" InsertCommand="INSERT INTO [CSE] ([Branch_ID], [Shift], [Year], [Enroll_No], [Name], [att_sub_1], [att_sub_2], [att_sub_3], [att_sub_4], [att_sub_5], [att_sub_6], [att_sub_7], [att_sub_8], [att_sub_9], [att_sub_10], [att_sub_11], [att_sub_12], [att_sub_13], [att_sub_14], [att_sub_15], [att_tot]) VALUES (@Branch_ID, @Shift, @Year, @Enroll_No, @Name, @att_sub_1, @att_sub_2, @att_sub_3, @att_sub_4, @att_sub_5, @att_sub_6, @att_sub_7, @att_sub_8, @att_sub_9, @att_sub_10, @att_sub_11, @att_sub_12, @att_sub_13, @att_sub_14, @att_sub_15, @att_tot)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [CSE] SET [Branch_ID] = @Branch_ID, [Shift] = @Shift, [Year] = @Year, [Enroll_No] = @Enroll_No, [Name] = @Name, [att_sub_1] = @att_sub_1, [att_sub_2] = @att_sub_2, [att_sub_3] = @att_sub_3, [att_sub_4] = @att_sub_4, [att_sub_5] = @att_sub_5, [att_sub_6] = @att_sub_6, [att_sub_7] = @att_sub_7, [att_sub_8] = @att_sub_8, [att_sub_9] = @att_sub_9, [att_sub_10] = @att_sub_10, [att_sub_11] = @att_sub_11, [att_sub_12] = @att_sub_12, [att_sub_13] = @att_sub_13, [att_sub_14] = @att_sub_14, [att_sub_15] = @att_sub_15, [att_tot] = @att_tot WHERE [ID] = @original_ID AND [Branch_ID] = @original_Branch_ID AND [Shift] = @original_Shift AND [Year] = @original_Year AND [Enroll_No] = @original_Enroll_No AND [Name] = @original_Name AND [att_sub_1] = @original_att_sub_1 AND [att_sub_2] = @original_att_sub_2 AND [att_sub_3] = @original_att_sub_3 AND [att_sub_4] = @original_att_sub_4 AND [att_sub_5] = @original_att_sub_5 AND [att_sub_6] = @original_att_sub_6 AND [att_sub_7] = @original_att_sub_7 AND [att_sub_8] = @original_att_sub_8 AND [att_sub_9] = @original_att_sub_9 AND [att_sub_10] = @original_att_sub_10 AND [att_sub_11] = @original_att_sub_11 AND [att_sub_12] = @original_att_sub_12 AND [att_sub_13] = @original_att_sub_13 AND [att_sub_14] = @original_att_sub_14 AND [att_sub_15] = @original_att_sub_15 AND [att_tot] = @original_att_tot" >
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Branch_ID" Type="Int32" />
                <asp:Parameter Name="original_Shift" Type="String" />
                <asp:Parameter Name="original_Year" Type="Int32" />
                <asp:Parameter Name="original_Enroll_No" Type="Int64" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_att_sub_1" Type="Int32" />
                <asp:Parameter Name="original_att_sub_2" Type="Int32" />
                <asp:Parameter Name="original_att_sub_3" Type="Int32" />
                <asp:Parameter Name="original_att_sub_4" Type="Int32" />
                <asp:Parameter Name="original_att_sub_5" Type="Int32" />
                <asp:Parameter Name="original_att_sub_6" Type="Int32" />
                <asp:Parameter Name="original_att_sub_7" Type="Int32" />
                <asp:Parameter Name="original_att_sub_8" Type="Int32" />
                <asp:Parameter Name="original_att_sub_9" Type="Int32" />
                <asp:Parameter Name="original_att_sub_10" Type="Int32" />
                <asp:Parameter Name="original_att_sub_11" Type="Int32" />
                <asp:Parameter Name="original_att_sub_12" Type="Int32" />
                <asp:Parameter Name="original_att_sub_13" Type="Int32" />
                <asp:Parameter Name="original_att_sub_14" Type="Int32" />
                <asp:Parameter Name="original_att_sub_15" Type="Int32" />
                <asp:Parameter Name="original_att_tot" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Branch_ID" Type="Int32" />
                <asp:Parameter Name="Shift" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Enroll_No" Type="Int64" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="att_sub_1" Type="Int32" />
                <asp:Parameter Name="att_sub_2" Type="Int32" />
                <asp:Parameter Name="att_sub_3" Type="Int32" />
                <asp:Parameter Name="att_sub_4" Type="Int32" />
                <asp:Parameter Name="att_sub_5" Type="Int32" />
                <asp:Parameter Name="att_sub_6" Type="Int32" />
                <asp:Parameter Name="att_sub_7" Type="Int32" />
                <asp:Parameter Name="att_sub_8" Type="Int32" />
                <asp:Parameter Name="att_sub_9" Type="Int32" />
                <asp:Parameter Name="att_sub_10" Type="Int32" />
                <asp:Parameter Name="att_sub_11" Type="Int32" />
                <asp:Parameter Name="att_sub_12" Type="Int32" />
                <asp:Parameter Name="att_sub_13" Type="Int32" />
                <asp:Parameter Name="att_sub_14" Type="Int32" />
                <asp:Parameter Name="att_sub_15" Type="Int32" />
                <asp:Parameter Name="att_tot" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Branch_ID" Type="Int32" />
                <asp:Parameter Name="Shift" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Enroll_No" Type="Int64" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="att_sub_1" Type="Int32" />
                <asp:Parameter Name="att_sub_2" Type="Int32" />
                <asp:Parameter Name="att_sub_3" Type="Int32" />
                <asp:Parameter Name="att_sub_4" Type="Int32" />
                <asp:Parameter Name="att_sub_5" Type="Int32" />
                <asp:Parameter Name="att_sub_6" Type="Int32" />
                <asp:Parameter Name="att_sub_7" Type="Int32" />
                <asp:Parameter Name="att_sub_8" Type="Int32" />
                <asp:Parameter Name="att_sub_9" Type="Int32" />
                <asp:Parameter Name="att_sub_10" Type="Int32" />
                <asp:Parameter Name="att_sub_11" Type="Int32" />
                <asp:Parameter Name="att_sub_12" Type="Int32" />
                <asp:Parameter Name="att_sub_13" Type="Int32" />
                <asp:Parameter Name="att_sub_14" Type="Int32" />
                <asp:Parameter Name="att_sub_15" Type="Int32" />
                <asp:Parameter Name="att_tot" Type="Int32" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Branch_ID" Type="Int32" />
                <asp:Parameter Name="original_Shift" Type="String" />
                <asp:Parameter Name="original_Year" Type="Int32" />
                <asp:Parameter Name="original_Enroll_No" Type="Int64" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_att_sub_1" Type="Int32" />
                <asp:Parameter Name="original_att_sub_2" Type="Int32" />
                <asp:Parameter Name="original_att_sub_3" Type="Int32" />
                <asp:Parameter Name="original_att_sub_4" Type="Int32" />
                <asp:Parameter Name="original_att_sub_5" Type="Int32" />
                <asp:Parameter Name="original_att_sub_6" Type="Int32" />
                <asp:Parameter Name="original_att_sub_7" Type="Int32" />
                <asp:Parameter Name="original_att_sub_8" Type="Int32" />
                <asp:Parameter Name="original_att_sub_9" Type="Int32" />
                <asp:Parameter Name="original_att_sub_10" Type="Int32" />
                <asp:Parameter Name="original_att_sub_11" Type="Int32" />
                <asp:Parameter Name="original_att_sub_12" Type="Int32" />
                <asp:Parameter Name="original_att_sub_13" Type="Int32" />
                <asp:Parameter Name="original_att_sub_14" Type="Int32" />
                <asp:Parameter Name="original_att_sub_15" Type="Int32" />
                <asp:Parameter Name="original_att_tot" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="mGrid">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            </Columns>
        </asp:GridView>
    </div>

    </form>
</body>
</html>
