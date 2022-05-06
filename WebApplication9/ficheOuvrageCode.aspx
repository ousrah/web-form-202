<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ficheOuvrageCode.aspx.cs" Inherits="WebApplication9.ficheOuvrageCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="maDiv" runat="server">
        </div>
        <a href="ajouterOuvrage.aspx">Ajouter</a>
        <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" OnClick="btnAjouter_Click" />
    </form>
</body>
</html>
