﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canil
{
    public partial class Editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (CapturaID())
                {
                    DadosConsulta();
                }
            }
        }

        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("id");
        }

        private int ObterIDCao()
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

        private void DadosConsulta()
        {
            var idCao = ObterIDCao();

            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from cao
                                    where cod_cao =@id";

                cmd.Parameters.AddWithValue("@id", idCao);
                Conexao.Conectar();

                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtID.Text = reader["cod_cao"].ToString();
                    txtNome.Text = reader["nom_cao"].ToString();
                    txtIdade.Text = reader["idad_cao"].ToString();
                    ddlPorte.SelectedValue = reader["port_cao"].ToString();
                    txtRaca.Text = reader["raca_cao"].ToString();
                    txtDefici.Text = reader["defi_cao"].ToString();
                    txtDoenca.Text = reader["doen_cao"].ToString();
                    txtPasseio.Text = reader["temp_passeio"].ToString();
                    ddlAgress.SelectedValue = reader["agress_cao"].ToString();
                    txtNomDono.Text = reader["nom_dono_cao"].ToString();
                    txtData.Text = reader["dat_pagam_cao"].ToString();
                    txtValor.Text = reader["val_pagam_cao"].ToString();
                    txtFormaPag.Text = reader["form_pag_cao"].ToString();
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

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"update cao set nom_cao = @nome, idad_cao = @idade, port_cao = @porte,
                                                   raca_cao = @raca,  defi_cao = @defici, doen_cao = @doenca,
                                                   temp_passeio = @tempPass, agress_cao = @agress, nom_dono_cao = @dono
                                                   where cod_cao = @id;";
                cmd.Parameters.AddWithValue("id", txtID.Text);
                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("idade", txtIdade.Text);
                cmd.Parameters.AddWithValue("porte", ddlPorte.Text.ToString());
                cmd.Parameters.AddWithValue("raca", txtRaca.Text);
                cmd.Parameters.AddWithValue("defici", txtDefici.Text);
                cmd.Parameters.AddWithValue("doenca", txtDoenca.Text);
                cmd.Parameters.AddWithValue("tempPass", txtPasseio.Text);
                cmd.Parameters.AddWithValue("agress", ddlAgress.Text.ToString());
                cmd.Parameters.AddWithValue("dono", txtNomDono.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Alterado";
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