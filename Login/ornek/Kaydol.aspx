<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="ornek.Kaydol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Style.css" rel="stylesheet" />

    <script>
        function Buttoniptal() {
            alert(" Kullanıcı adı ve şifre en az 8 karakterli olmalı.");
           
            
        }



    </script>


    <input  type="button" style="color:red;" value="Yardım için tıklayınız" onclick="Buttoniptal()"/>

</head>
<body>
   
    <form id="form1" runat="server">
        <center> 
        <div >
            <center> 
        <div class="solTaraf">
            <asp:Panel ID="pnlkayit" runat="server">
            
             <div class="hizliKayit">
                 <div class="ust">
                     HIZLI KAYIT OL
                 </div>

                 <div class="alt">
                     <br />
                     <span>Kullanıcı Adı: </span>
                     <asp:TextBox ID="txtKullaniciAdi" CssClass="textbox" runat="server"></asp:TextBox>
                   <br />
                     <br />
                        <span>Mail Adresiniz: </span>
                     <asp:TextBox ID="txtMail" CssClass="textbox" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" style="width: 85px; margin: 0 auto; margin-top: 10px;" runat="server" ErrorMessage="uygun formatta girmediniz" ControlToValidate="txtMail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">uygun formatta girmediniz</asp:RegularExpressionValidator>
                  <br />
                     <br />
                        <span>Şifre:</span>
                     <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>
                     <br />
                     <br />
                      <span>Şifreyi tekrar giriniz:</span>
                     <asp:TextBox ID="TextSifreTekrar" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>


                     <asp:Button ID="btnKayit" CssClass="buttonStyle" runat="server" Text="KAYDOL"   />
                     
                      
                    <asp:Button ID="Buttoniptal" CssClass="buttonStyle" runat="server" Text="İPTAL" OnClick="Buttoniptal_Click"  />

                     

                     <asp:Label ID="lblSonuc" runat="server" Text=" "></asp:Label>




                 </div>
             </div>
                </asp:Panel>

            <asp:Panel ID="pnlDurum" runat="server" style="background-color: white; padding: 10px;">

                <asp:Label ID="lblDurum" runat="server" Text=" "></asp:Label>

                <br />
                <a href="/" > Ana Sayfaya git</a>

            </asp:Panel>

            </div>
                </center>
            </div>

         </center>
    </form>
</body>


</html>
