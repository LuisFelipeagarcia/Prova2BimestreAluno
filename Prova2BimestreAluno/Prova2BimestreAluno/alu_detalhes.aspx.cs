using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova2BimestreAluno
{
    public partial class alu_detalhes : System.Web.UI.Page
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
            return Request.QueryString.AllKeys.Contains("id_alu");
        }

        private void DadosConsulta()
        {
            var id = ObterID();
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from aluno
                                    where id_alu =@id";

                cmd.Parameters.AddWithValue("@id", id);
                Conexao.Conectar();

                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtID.Text = reader["id_alu"].ToString();
                    txtRA.Text = reader["ra_alu"].ToString();
                    txtNome.Text = reader["nom_alu"].ToString();
                    ddlSexo.SelectedValue = reader["sex_alu"].ToString();
                    txtDataNasc.Text = reader["dt_nasc_alu"].ToString();
                    txtEmail.Text = reader["email_alu"].ToString();
                    txtLog.Text = reader["log_end_alu"].ToString();
                    txtNum.Text = reader["num_end_alu"].ToString();
                    txtBairro.Text = reader["bair_end_alu"].ToString();
                    txtComp.Text = reader["comp_end_alu"].ToString();
                    txtCidade.Text = reader["cid_end_alu"].ToString();
                    txtUF.Text = reader["uf_end_alu"].ToString();
                    txtCurso.Text = reader["curso_alu"].ToString();
                    txtIngress.Text = reader["dt_matr_alu"].ToString();
                    txtCurso.Text = reader["curso_alu"].ToString();
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
            var idURL = Request.QueryString["id_alu"];

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

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}