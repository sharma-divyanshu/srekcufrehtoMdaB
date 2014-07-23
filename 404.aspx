<%@ Page Language="C#" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        img{
            float:left; 
            height:100%;
            width:50%;
            position:relative;
            display:inline-block;
        }
        p{
            float:left;
            position:relative;
            display:inline-block;
            text-align:center;
            width:50%;
            color:rgb(177,239,41);  
        }
        h1{
            float:left;
            position:relative;
            display:inline-block;
            text-align:center;
            width:50%;
            color:rgb(177,239,41);      
            padding-top:15%;
        }
        html{
            margin:0;
            width:100%;
            height:100%;
            background-color:rgb(0,0,0);
        }
        .main{
            height:100%;
            width:100%;
        }
    </style>
</head>
<body style="margin:0;">
    <form id="form1" runat="server" >
    <div class="main">
        <img alt="error-404" src="img/404.jpg"/>
        <h1>ERROR 404</h1>
        <p>You have either reached the wrong page or session has expired.</p>
    </div>
    </form>
</body>
</html>
