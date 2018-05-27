<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Linkler.aspx.cs" Inherits="ornek.Linkler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
    


    <link href="Style.css" rel="stylesheet" />


    <center> 
    <div id="div1"> 
        <br />
     <div id="div2"> <h3>  Mülakat Önerileri  </h3> </div>
        
     <div id="div3" style="display:none"> <br /> İyi bir CV’ye sahip olmak, tecrübelerinizin ve yeteneklerinizin düzgün ve etkili bir şekilde anlatıldığı bir ön yazı yazmak ve tüm bunlar sayesinde başvurduğunuz pozisyona talip olan diğer adayların arasından sıyrılmak… Bunların hepsi iş görüşmesine davet edilmenizi sağlayan kritik adımlar arasında yer alıyor. Ancak bunlar kadar önemli olan bir diğer konu ise elbette iş görüşmesinde İK uzmanını etkileme yönteminiz.</div>

    <input type="button" name="button" id="selam" value="Görmek için tıklayınız " onclick="func();">

        </div>

         <style>
   #circle {
            background-color:pink;
            height: 100px;
            left:50px;
            position:relative;
            top:150px;
            width: 100px;
            border-radius: 50%;

        }
</style>


        </center>

   


  
 
<script>

   



    console.log("ffff");

    function func() {

        var btnSelam = document.getElementById("div1");
        btnSelam.style.backgroundColor="Lavender";
        document.getElementById("div3").style.display = "block";
       
      /*  var cevap = window.prompt("yaşınız kaç");
       if(cevap==25)
        window.alert("Siteme Hoşgeldiniz");*/
   }

   
          
     

          /* if ((pix > 0 && bottom > 250) || (pix < 0 && bottom < 50)) {
               clearInterval(tim);
               // setTimeout(circlefunc, delay);
               //  tim = setInterval(function () { circlefunc(pix *(-1)); }, delay);
               i=i*(-1)
           }
           elem.style.top = bottom + i + "px";
           tim = setInterval(function () { circlefunc(pix * (-1)); }, delay);*/
           
          // i++;
       




       

    
       var tim = setTimeout(circlefunc, delay);
      
        
       //var tim= setInterval(function () { circlefunc(-2); }, delay)

       //clearTimeout(timer);

   })();
   


</script>




    

</asp:Content>
