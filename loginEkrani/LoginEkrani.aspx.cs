using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace loginEkrani
{
    public partial class LoginEkrani : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-8RHPADE;Initial Catalog=Prıje5ADMIN;Integrated Security=True;");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select*from TBLADMIN where KULLANICI=@KULADI  and SIFRE=@SIFRE ",cn);
            cmd.Parameters.AddWithValue("@KULADI",txtKulAdi.Text);
            cmd.Parameters.AddWithValue("@SIFRE",txtSifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Veriler.aspx");
            }
            else
            {
                Response.Write("Yanlış");
            }
            cn.Close();
        }
    }
}