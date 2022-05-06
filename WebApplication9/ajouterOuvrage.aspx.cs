using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication9
{
    public partial class ajouterOuvrage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            string req = "insert into ouvrage values (" + TextBox1.Text + ",'" + TextBox2.Text + "'," + TextBox4.Text + "," + TextBox3.Text + ",'" + TextBox5.Text + "')";
            SqlCommand com = new SqlCommand(req, cn);
            com.ExecuteNonQuery();

            com = null;
            cn.Close();
            cn = null;
            Response.Redirect("ficheOuvrageCode.aspx?code=" + TextBox1.Text);
        }
    }
}