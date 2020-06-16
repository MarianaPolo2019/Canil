using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canil
{
    public partial class Inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into cao (nom_cao, idad_cao, port_cao, raca_cao, defi_cao,
                                                     doen_cao, temp_passeio, agress_cao, nom_dono_cao, dat_pagam_cao,
                                                     val_pagam_cao, form_pag_cao)
                                values
                                (@nome, @idade, @porte, @raca, @defici, @doenca, @tempPass, @agress, @dono, @datPag,
                                 @valPag, @formaPag)";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("idade", txtIdade.Text);
                cmd.Parameters.AddWithValue("porte", ddlPorte.SelectedItem.Value.ToString());
                cmd.Parameters.AddWithValue("raca", txtRaca.Text);
                cmd.Parameters.AddWithValue("defici", txtDefici.Text);
                cmd.Parameters.AddWithValue("doenca", txtDoenca.Text);
                cmd.Parameters.AddWithValue("tempPass", txtPasseio.Text);
                cmd.Parameters.AddWithValue("agress", ddlAgress.SelectedItem.Value.ToString());
                cmd.Parameters.AddWithValue("dono", txtNomDono.Text);
                cmd.Parameters.AddWithValue("datPag", txtData.Text);
                cmd.Parameters.AddWithValue("valPag", txtValor.Text);
                cmd.Parameters.AddWithValue("formaPag", txtFormaPag.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Inserido";
            }
            catch (Exception ex)
            {
                lblResultado.CssClass = "text-danger";
                lblResultado.Text = "Falha... revise os dados: " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}