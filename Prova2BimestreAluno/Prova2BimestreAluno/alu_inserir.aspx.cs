using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova2BimestreAluno
{
    public partial class alu_inserir : System.Web.UI.Page
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
                cmd.CommandText = @"insert into aluno (ra_alu, nom_alu, sex_alu, dt_nasc_alu, dt_matr_alu, email_alu, curso_alu, log_end_alu, num_end_alu, comp_end_alu, bair_end_alu, cid_end_alu, uf_end_alu) 
                                    values (@ra, @nome, @sexo, @dtNasc, @dtMatr, @email, @curso, @log, @num, @complemento, @bair, @cidade, @uf);";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", ddlSexo.SelectedValue);
                cmd.Parameters.AddWithValue("dtNasc", txtDataNasc.Text);
                cmd.Parameters.AddWithValue("ra", txtRA.Text);
                cmd.Parameters.AddWithValue("curso", txtCurso.Text);
                cmd.Parameters.AddWithValue("dtMatr", txtIngress.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("log", txtLog.Text);
                cmd.Parameters.AddWithValue("num", txtNum.Text);
                cmd.Parameters.AddWithValue("bair", txtBairro.Text);
                cmd.Parameters.AddWithValue("cidade", txtCidade.Text);
                cmd.Parameters.AddWithValue("uf", txtUF.Text);
                cmd.Parameters.AddWithValue("complemento", txtComp.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Inserido!";
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