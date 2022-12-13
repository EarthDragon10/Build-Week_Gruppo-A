<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Build_Week_Gruppo_A.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .widthImg{
            width: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row flex-wrap py-4 justify-content-start align-items-center">
            <asp:Repeater ID="REPEATER_SelectAllFromProdotto" ItemType="Build_Week_Gruppo_A.Prodotto" runat="server">
                <ItemTemplate>
                    <div class="bg-white py-5 row col-12 col-md-6 col-lg-4">


                        <div class="col-2">
                            <a href="DettaglioProdotto.aspx?Id=<%# Item.ID_Prodotto %>"> 
                            <asp:Image CssClass="widthImg" ImageUrl='<%#"~/img/"  + Item.URLImg %>' runat="server" />
                            </a>
                        </div>
                        
                       
                        <div class="col-10">
                            <h2><%#Item.Marca %></h2>
                            <p><%#Item.Modello %></p>
                            <p>Prezzo: <%#Item.PrezzoVendita.ToString("c2") %> </p>

                            <asp:Label Text='<%# "In Offerta! Prezzo precedente = " + Item.PrezzoPrecedente %>' ForeColor="Green" Visible="<%#Item.InPromozione %>" runat="server" />

                            <a href="DettaglioProdotto.aspx?Id=<%# Item.ID_Prodotto %>" class="btn btn-primary"> Dettagli Prodotto </a>
                            <asp:Button ID="Button_AggiungiCarrello" OnClick="Button_AggiungiCarrello_Click" runat="server" CssClass="btn btn-success" Text="Aggiungi al carrello" />

                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
