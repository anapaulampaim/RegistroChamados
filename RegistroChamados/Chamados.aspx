<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chamados.aspx.cs" Inherits="RegistroChamados.Chamados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="./css/StyleSheet1.css" />
    <title>Ferramenta Chamados</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="chamado">
            <h1 class="titulo">Chamados</h1><br />
                 </div>
            <div class="background">
             <div class="formulario">
            <label>Solicitante</label>
             <asp:TextBox ID="txtSolicitante" runat="server"></asp:TextBox>
            
             <label>Título</label>
             <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
           
             <label>Descrição do Chamado</label>
             <asp:TextBox CssClass="text" ID="txtDescricao" runat="server"></asp:TextBox>
           <div class="botao">
             <asp:Button CssClass="btnAdd" ID="btnAdicionar" runat="server" Text="Adicionar" OnClick="btnAdicionar_Click" />
             <asp:Button CssClass="btnConsultar" ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
           </div>
             <asp:Label ID="lbResultado" runat="server" Visible="false"></asp:Label> <br/>
           
             <asp:GridView ID="gridCliente" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataChamado" Visible="false">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" InsertVisible="False" SortExpression="codigo"></asp:BoundField>
                    <asp:BoundField DataField="Solicitante" HeaderText="Solicitante" SortExpression="Solicitante"></asp:BoundField>
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo"></asp:BoundField>
                    <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao"></asp:BoundField>
                </Columns>
            </asp:GridView>

       <asp:SqlDataSource runat="server" ID="SqlDataChamado" ConnectionString='<%$ ConnectionStrings:RegistroChamadosConnectionString %>' SelectCommand="SELECT * FROM TABELA"></asp:SqlDataSource>
       </div>
             </div>
       </div>
    </form>

</body>
</html>
