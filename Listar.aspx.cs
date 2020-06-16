using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canil
{
    public partial class Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nivel = Session["Perfil"].ToString();
            CarregarCaes();
        }

        private void CarregarCaes()
        {
            string query = @"select cod_cao, nom_cao, nom_dono_cao from cao";
            DataTable dt = new DataTable();
            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
                da.Fill(dt);

                //Popular REPEATER com os dados do DataTable
                rptClientes.DataSource = dt;
                rptClientes.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Falha: " + ex.Message;
            }


        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inserir.aspx");
        }

        protected void rptUsuarios_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
        {
            string nivel = Session["Perfil"].ToString();
            var lnkEditar = (LinkButton)e.Item.FindControl("lnkEditar");
            var lnkRemover = (LinkButton)e.Item.FindControl("lnkRemover");

            if (lnkEditar != null && lnkRemover != null && nivel == "O")
            {
                lnkEditar.Visible = false;
                lnkRemover.Visible = false;
            }
        }
    }
}