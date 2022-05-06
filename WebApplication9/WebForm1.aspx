<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            color: #FFFFFF;
            background-color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1"><em><span class="auto-style2">bonjour
        </span></em></h1>
        </div>

        <%  for (int i = 0; i < 10; i++)
            { %>bonjour <br />

        <%} %>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
        <asp:Button ID="btnAddition" runat="server" Text="Addition" OnClick="btnAddition_Click" />
        <asp:TextBox ID="txtResultat" runat="server"></asp:TextBox>
        <br />
        <br />
    </form>

    <script>
        function test()
        {
            alert("ok")
        }
    </script>
</body>
</html>
