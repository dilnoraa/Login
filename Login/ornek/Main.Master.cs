using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ornek
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            object kullanici = Session["kullaniciadi"];
            object kullanici2 = Session["isim"];
            object kullanici3 = Session["Soysim"];
            if (kullanici != null && kullanici2 !=null)
            {
                pnlGiris.Visible = false;
                pnlKullanici.Visible = true;
                lblKullaniciAdi.Text = kullanici2.ToString();
                lblisim.Text = kullanici3.ToString();

            }
            else
            {

                pnlKullanici.Visible = false;
                pnlGiris.Visible = true;

            }
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Giris.aspx");
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }
}