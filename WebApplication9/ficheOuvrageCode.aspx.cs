﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication9
{
    public partial class ficheOuvrageCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
                cn.Open();
                SqlCommand com = new SqlCommand("select * from ouvrage where numouvr = " + Request.QueryString["code"], cn);
                SqlDataReader dr = com.ExecuteReader();
                string c = "<table class='table table-striped'><tr><th>ISBN</th><th>Titre</th><th>Editeur</th></tr>";
                while (dr.Read())
                {
                    c += "<tr><td>" + dr["numouvr"].ToString() + "</td><td><a href = 'ficheOuvrageCode.aspx?code=" + dr["numouvr"].ToString() + "'>" + dr["nomouvr"].ToString() + "</a></td><td>" + dr["nomed"].ToString() + "</td></tr>";

                }
                c += "</table>";
                maDiv.InnerHtml = c;
                dr.Close();
                dr = null;
                com = null;
                cn.Close();
                cn = null;
        
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajouterOuvrage.aspx");
        }
    }
}