<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="Home.css" />
    <div class="banner">
        <asp:Label ID="Label5" runat="server" Text="LOGIN"></asp:Label>
    </div>
    <br />    
    <div>
    <asp:Table runat="server">
    <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox2"  SetFocusOnError="true" ErrorMessage="Required Feild"></asp:RequiredFieldValidator>
    </asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
    </asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
        </asp:TableCell></asp:TableRow>
        
    </asp:Table>
    <asp:Button runat="server" Text="Button" OnClick="Unnamed2_Click" />
    </div>
</asp:Content>

