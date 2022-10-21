using RegistroChamados.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RegistroChamados.DAL
{
    public class ChamadoDAL
    {
        public void AdicionarChamado(Tabela objUsu)
        {
            using (RegistroChamadosEntities chamado = new RegistroChamadosEntities())
            {
                chamado.Tabela.Add(objUsu);
                chamado.SaveChanges();
            }
      
        
        
        
        }
    
       public Tabela ConsultarChamado(string usuario, string titulo)
        {
            using (RegistroChamadosEntities ctx = new RegistroChamadosEntities())
            {
                return ctx.Tabela.Where(c => c.Solicitante == usuario && c.Titulo == titulo).FirstOrDefault();
            }
        }
    
    
    }



}