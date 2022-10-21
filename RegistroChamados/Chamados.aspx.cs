using RegistroChamados.DAL;
using RegistroChamados.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroChamados
{
    public partial class Chamados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
           
                gridCliente.Visible = true;
            
        }
        


        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
         if (string.IsNullOrEmpty(txtSolicitante.Text))
            {
                lbResultado.Text = "Informe seu nome";
                lbResultado.Visible = true;
            }
         else if(string.IsNullOrEmpty(txtTitulo.Text))
            {
                lbResultado.Text = "Informe o título do chamado";
            }
            else if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                lbResultado.Text = "Descreva os detalhes do chamado";
            }

            else { 
            Tabela objUsuario = new Tabela();
            objUsuario.Solicitante = txtSolicitante.Text;
            objUsuario.Titulo = txtTitulo.Text;
            objUsuario.Descricao = txtDescricao.Text;

            ChamadoDAL chaDal = new ChamadoDAL();
            chaDal.AdicionarChamado(objUsuario);

                lbResultado.Text = "seu chamado foi adicionado com sucesso!";
                lbResultado.Visible = true;
                txtSolicitante.Text = "";
                txtTitulo.Text = "";
                txtDescricao.Text = "";
            
            }
        }
    }
}