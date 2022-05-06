<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listeOuvragesCode.aspx.cs" Inherits="WebApplication9.listeOuvragesCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtChercher" runat="server"></asp:TextBox>
        <asp:Button ID="btnChercher" runat="server" Text="Chercher" OnClick="Button1_Click" />
      
        <br />
        <asp:Button ID="btnAjouter" runat="server" OnClick="btnAjouter_Click" Text="Ajouter" />
        <br />
      
        <div id="maDiv" runat="server">
        </div>


        <!--   code coté client -->
        <input type="button" name="name" onClick="javascript:setVal()" value="" />
        <div id="maDiv2"></div>
    </form>
    <script>
        function setVal() {
            maDiv2.innerHTML = "test2";


        }

    </script>
</body>
</html>
