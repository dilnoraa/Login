using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Data.SqlClient;

namespace ornek
{
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("server=.\\SQLEXPRESS;initial catalog=Satis;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kaydol.aspx");
        }

        protected void Button_iptal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }







        protected void ButtonGirisyap_Click(object sender, EventArgs e)
        {
            string sorgu = "Select * From Kullanicilar Where KullaniciAdi=@kullanici AND Sifre=@sifre";
            SqlCommand cmd = new SqlCommand(sorgu, conn);

            cmd.Parameters.AddWithValue("@kullanici", txtKullaniciAdi2.Text);
            cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);
           
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullaniciadi", dr["KullaniciAdi"].ToString());
                Session.Add("isim", dr["Isim"].ToString());
                Session.Add("Soysim", dr["Soyisim"].ToString());
               

               // Response.Redirect(Request.RawUrl);

                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = "Girdiğiniz bilgiler yanlıştır.";
            }
           
        }
    }
}