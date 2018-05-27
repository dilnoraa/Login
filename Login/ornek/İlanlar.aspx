<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="İlanlar.aspx.cs" Inherits="ornek.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
     <h4 align="center"> Güncel İlanlar
         
         <div style="width:730px; overflow:auto;" >   
         <asp:GridView  ID ="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="margin-left: 35px" Width="742px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="BaslangicTarih" HeaderText="BaslangicTarih" SortExpression="BaslangicTarih" />
                 <asp:BoundField DataField="BitisTarih" HeaderText="BitisTarih" SortExpression="BitisTarih" />
                 <asp:BoundField DataField="Pozisyon" HeaderText="Pozisyon" SortExpression="Pozisyon" />
                 <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet" SortExpression="Cinsiyet" />
                 <asp:BoundField DataField="Yas" HeaderText="Yas" SortExpression="Yas" />
                 <asp:BoundField DataField="Egitim" HeaderText="Egitim" SortExpression="Egitim" />
                 <asp:BoundField DataField="Tecrube" HeaderText="Tecrube" SortExpression="Tecrube" />
                 <asp:BoundField DataField="Ehliyet" HeaderText="Ehliyet" SortExpression="Ehliyet" />
                 <asp:BoundField DataField="Departman" HeaderText="Departman" SortExpression="Departman" />
                 <asp:BoundField DataField="CalismaSekli" HeaderText="CalismaSekli" SortExpression="CalismaSekli" />
                 <asp:BoundField DataField="DilBilgisi" HeaderText="DilBilgisi" SortExpression="DilBilgisi" />
                 <asp:BoundField DataField="EkBilgi" HeaderText="EkBilgi" SortExpression="EkBilgi" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
             <SortedDescendingCellStyle BackColor="#E9EBEF" />
             <SortedDescendingHeaderStyle BackColor="#4870BE" />
         </asp:GridView>
             </div>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SatisConnectionString %>" SelectCommand="SELECT [BaslangicTarih], [BitisTarih], [Pozisyon], [Cinsiyet], [Yas], [Egitim], [Tecrube], [Ehliyet], [Departman], [CalismaSekli], [DilBilgisi], [EkBilgi] FROM [IlanDetay]"></asp:SqlDataSource>
     </h4>

      <center> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BaslangicTarih" HeaderText="BaslangicTarih" SortExpression="BaslangicTarih" />
            <asp:BoundField DataField="BitisTarih" HeaderText="BitisTarih" SortExpression="BitisTarih" />
            <asp:BoundField DataField="Pozisyon" HeaderText="Pozisyon" SortExpression="Pozisyon" />
            <asp:BoundField DataField="Departman" HeaderText="Departman" SortExpression="Departman" />
            <asp:BoundField DataField="CalismaSekli" HeaderText="CalismaSekli" SortExpression="CalismaSekli" />
            <asp:BoundField DataField="Egitim" HeaderText="Egitim" SortExpression="Egitim" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
     </asp:GridView>


    </center>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SatisConnectionString %>" SelectCommand="SELECT [BaslangicTarih], [BitisTarih], [Pozisyon], [Departman], [CalismaSekli], [Egitim] FROM [IlanDetay]"></asp:SqlDataSource>


</asp:Content>
