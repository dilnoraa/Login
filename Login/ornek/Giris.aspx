<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="ornek.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş Yap</title>
    <link href="/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <center> 
    <div class="MainBox">
        <div class="TopBox">
             &nbsp;
                <div align="center" >
                <p6> SİSTEME HOŞ GELDİNİZ </p6>
                </div>
            </div>
           <center> 


           


        <div class="kullanici">
             &nbsp;
            <br />
             <span>Kullanıcı Adı: </span>
            <br />
                     <asp:TextBox ID="txtKullaniciAdi2" CssClass="textbox" runat="server"></asp:TextBox>
                   <br />

        </div>
        <div class="kullanici">
             &nbsp;
             &nbsp;
            <br />
              <span>Şifre: </span>
            <br />
                     <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server"></asp:TextBox>
                   <br />
        </div>
           </center>
   

            <div class="BottomBox">
                

                <div align="center"> 

                    <asp:Button CssClass="buttonStyle"  ID="ButtonGirisyap" runat="server" Text="Giriş Yap" OnClick="ButtonGirisyap_Click" ></asp:Button>
                     <asp:Button CssClass="buttonStyle"  ID="Button_iptal" runat="server" Text="İptal" OnClick="Button_iptal_Click" ></asp:Button>
                    <br />


                    <br />
                        <asp:Label style="color:red;"  ID="Label1" runat="server" Text=" "></asp:Label>
                    <br />
                    <br />
                    <span>Yeni Bir Hesap Oluştur</span>
                    <br />
                    <asp:Button CssClass="buttonStyle" ID  ="ButtonKaydol" runat="server" Text="Kaydol" OnClick="Button1_Click"></asp:Button>
                   
                    <br />
                     &nbsp;
                </div>
            </div>
            </div>
            </center>
    </form>
</body>
</html>
