using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Data.SqlClient;

namespace ornek
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
      //  SqlConnection conn = new SqlConnection("server=.\\SQLEXPRESS;initial catalog=Satis;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
             object kullanici = Session["kullaniciadi"];
            object kullanici2 = Session["isim"];
            object kullanici3 = Session["Soysim"];
            if (kullanici != null && kullanici2 != null)
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
            }
            else
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
            }
        }


        public void listeleme() {

           
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}