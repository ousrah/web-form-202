<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listeOuvrages.aspx.cs" Inherits="WebApplication9.listeOuvrages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtRecherche" runat="server"></asp:TextBox>
            <asp:Button ID="btnRecherche" runat="server" Text="Chercher" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" PageSize="25" Width="863px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
                    <asp:TemplateField HeaderText="NOMOUVR" SortExpression="NOMOUVR">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOMOUVR") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ficheOuvrage.aspx?code=" + Eval("NUMOUVR") %>' Text='<%# Eval("NOMOUVR") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
                    <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
                    <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" FilterExpression="nomouvr like '%{0}%' or nomed like '%{0}%'" SelectCommand="SELECT * FROM [OUVRAGE]">
                <FilterParameters>
                    <asp:ControlParameter ControlID="txtRecherche" Name="newparameter" PropertyName="Text" />
                </FilterParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
