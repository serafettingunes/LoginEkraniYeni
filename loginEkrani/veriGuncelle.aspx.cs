using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginEkrani
{
    public partial class veriGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int x = Convert.ToInt32( Request.QueryString["ID"]);
            DataSet1TableAdapters.TBLADMINTableAdapter DS = new DataSet1TableAdapters.TBLADMINTableAdapter();
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;
            if (Page.IsPostBack==false)
            {
                TxtKULLANICI.Text = DS.VeriGetir(Convert.ToInt32(TxtID.Text))[0].KULLANICI;
                TxtSIFRE.Text = DS.VeriGetir(Convert.ToInt32(TxtID.Text))[0].SIFRE;

            }

           
        }

        protected void BtnGUNCELLE_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLADMINTableAdapter ds = new DataSet1TableAdapters.TBLADMINTableAdapter();
            ds.GUNCELLEADMIN(TxtKULLANICI.Text,TxtSIFRE.Text, Convert.ToInt32(TxtID.Text));
            Response.Redirect("Veriler.aspx");
        }
    }
}