<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="ProdottiPerCategoria.aspx.cs" Inherits="Build_Week_Gruppo_A.ProdottiPerCategoria" %>
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
            <asp:Repeater ID="REPEATER_SelectAllFromCategoria" ItemType="Build_Week_Gruppo_A.Prodotto" runat="server">
                <ItemTemplate>
                    <div class="bg-white py-5 row col-12 col-md-6 col-lg-4">


                        <div class="col-3">
                            <asp:Image CssClass="widthImg" ImageUrl='<%#"~/img/"  + Item.URLImg %>' runat="server" />
                        </div>
                        
                       
                        <div class="col-9">
                            <h2><%#Item.Marca %></h2>
                            <p><%#Item.Modello %></p>
                            <p>Prezzo: <b><%#Item.PrezzoVendita.ToString("c2") %>  </b></p>

                          
                            <asp:Label  Text='<%# "SCONTATO AL " + Math.Floor((Item.PrezzoPrecedente - Item.PrezzoVendita) * 100 / Item.PrezzoPrecedente) +"%" %>' Font-Bold="true" ForeColor="Green" Visible="<%#Item.InPromozione %>" runat="server" /> <br />
                            <asp:Label  Text='<%# "Risparmio: " + (Item.PrezzoPrecedente - Item.PrezzoVendita).ToString("c2") %>' Visible="<%#Item.InPromozione %>" runat="server" /> <br />

                             <a href="../DettaglioProdotto.aspx?Id=<%# Item.ID_Prodotto %>" class="btn btn-sm btn-dark"> Dettagli </a>
                            <asp:Button ID="Button_AggiungiCarrello" OnClick="Button_AggiungiCarrello_Click" CommandArgument="<%# Item.ID_Prodotto %>" runat="server" CssClass="btn btn-sm btn-success" Text="Aggiungi al carrello" />
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
