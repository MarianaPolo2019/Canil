using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canil
{
    public partial class TesteBD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTestar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                Conexao.Conectar();
                lblResultado.CssClass = "text-success";
                lblResultado.Text = "OK ... Conectado";
            }
            catch (Exception ex)
            {
                lblResultado.CssClass = "text-danger";
                lblResultado.Text = "Falha: " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }

        }
    }
}