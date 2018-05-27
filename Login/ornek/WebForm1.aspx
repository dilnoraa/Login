<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ornek.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">

    <center onclientclick="iletisim();"> 
         &nbsp;
<div> 

     <input type="button" name="button" id="selam" value="İletişim Bilgileri için tıklayınız">

     <div id="id1">

     </div>
    </div>
     &nbsp;
     &nbsp;
               
<div id="id2">
   <input type="button" name="button2" id="but2" value="Yer değiştir" onclick="funct();">

     <p style="color:red" id="p1">Kırmızı </p>
    <p style="color:green" id="p2"> Yeşil </p>

</div>
       &nbsp;
      &nbsp;

<div> 
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     &nbsp;
     &nbsp;
    <input type="button" name="button3" id="but3" value="Yerine Koy" onclick="replace();">

</div>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        
         &nbsp;
      &nbsp;

<div> <input type="button" name="button4" id="but4" value="Sil" onclick="sil();">

</div>
         &nbsp;

        </center>

    <script>
        var d = document;
        (function iletisim() {
            var element = d.createElement("p");
            element.innerHTML = "<strong>  </stong>"
           // content = document.createTextNode("Cep no: 5077928764");
            icerik = d.getElementById("id1");
          //  element.appendChild(content);
            icerik.parentNode.appendChild(element);

            

        })();

        function funct() {
            icerik = d.getElementById("p1");
            el = d.getElementById("p2");
            icerik.parentNode.insertBefore(el, icerik);
        }

        function replace() {
            icerik = d.getElementById("p1");
            el = d.getElementById("p2");
            icerik.parentNode.replaceChild(el, icerik);
        }

        function sil() {

            icerik = d.getElementById("id1");
            icerik.parentNode.removeChild(icerik);
        }

    </script>

    </asp:Content>
