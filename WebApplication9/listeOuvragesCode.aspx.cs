using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication9
{
    public partial class listeOuvragesCode : System.Web.UI.Page
    {
        private void afficherOuvrages(string req)
        {
  SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand com = new SqlCommand(req, cn);
            SqlDataReader dr = com.ExecuteReader();
            string c = "<table class='table table-striped'><tr><th>ISBN</th><th>Titre</th><th>Editeur</th></tr>";
            while (dr.Read())
            {
                c += "<tr><td>" + dr["numouvr"].ToString() + "</td><td><a href = 'ficheOuvrageCode.aspx?code="+ dr["numouvr"].ToString() + "'>" + dr["nomouvr"].ToString() + "</a></td><td>" + dr["nomed"].ToString() + "</td></tr>";

            }
            c += "</table>";
            maDiv.InnerHtml = c;
            dr.Close();
            dr = null;
            com = null;
            cn.Close();
            cn = null;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            afficherOuvrages("select * from ouvrage");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            afficherOuvrages("select * from ouvrage where nomouvr like '%"+txtChercher.Text+"%' or  nomed like '%"+txtChercher.Text+"%'");

        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajouterOuvrage.aspx");
        }
    }
}