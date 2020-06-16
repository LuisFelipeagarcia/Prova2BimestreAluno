using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova2BimestreAluno
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Carregar();
        }

        private void Carregar()
        {
            string query = @"select id_alu, nom_alu, curso_alu from aluno";
            DataTable dt = new DataTable();
            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
                da.Fill(dt);

                //Popular REPEATER com os dados do DataTable
                rptAlunos.DataSource = dt;
                rptAlunos.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Falha: " + ex.Message;
            }
        }
    }
}