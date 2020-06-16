using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canil
{
    public partial class Editar_Usu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CapturaID())
            {
                DadosConsulta();
            }
        }

        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("id");
        }

        private void DadosConsulta()
        {
            var id = ObterID();
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from usuario
                                    where id =@id";

                cmd.Parameters.AddWithValue("@id", id);
                Conexao.Conectar();

                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtID.Text = reader["id"].ToString();
                    txtNome.Text = reader["nome"].ToString();
                    txtLogin.Text = reader["login"].ToString();
                    txtSenha.Text = reader["senha"].ToString();
                    ddlNivel.SelectedValue = reader["nivel"].ToString();
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }

        private int ObterID()
        {
            var id = 0;
            var idURL = Request.QueryString["id"];

            if (!int.TryParse(idURL, out id))
            {
                throw new Exception("ID inválido");
            }
            if (id <= 0)
            {
                throw new Exception("ID inválido");
            }
            return id;
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            //Encriptar a senha
            var senhaEncriptada = BCrypt.Net.BCrypt.HashPassword(txtSenha.Text);

            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"update usuario set nome = @nome, login = @login, senha = @senha, nivel = @nivel where id = @id";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("login", txtLogin.Text);
                cmd.Parameters.AddWithValue("senha", senhaEncriptada);
                cmd.Parameters.AddWithValue("nivel", ddlNivel.Text);

                Conexao.Conectar();
                cmd.ExecuteNonQuery();
                Response.Redirect("Listar.aspx");
            }
            catch (Exception ex)
            {
                lblResultado.Text = $"Falha: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}